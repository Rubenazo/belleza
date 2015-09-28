<?php

class ShoppingController extends BaseController {

	public function showShop()
	{
		$title = 'Shop';
		$items = Item::where('stock', '>', 0)->get();
		return View::make('shop')
		->with('title', $title)
		->with('items', $items);
	}

	public function showCart()
	{
		$title = 'Shopping Cart';
		return View::make('cart')
		->with('title', $title);
	}

	public function addItem($id) 
	{
    	$item = Item::find($id);
		Cart::add($id, $item->nombre, 1, $item->precio);
		return Redirect::to('cart'); 
	}

	public function process() 
	{
		$factura             = new Factura;
		$factura->usuario_id = Auth::user()->id;
		$factura->total      = Cart::total();

		foreach ( Cart::content() as $item ) {
			if ( Item::find($item['id'])->stock == 0 ) {
				Session::flash('error', 'El item ' . $item['name'] . ' se ha agotado');
				return Redirect::back();
			}
		}
		
		if ($factura->save()) {
			foreach ( Cart::content() as $item ) {
				$detalle             = new Detalle;
				$detalle->factura_id = $factura->id;
				$detalle->item_id    = $item['id'];
				$detalle->cantidad   = $item['qty'];
				
				if ($detalle->save()) {
					$deduct = Item::find($item['id']);
					$deduct->stock -= $item['qty'];
					$deduct->save();
				} else {
					Session::flash('error', 'Error al procesar');
					return Redirect::back();
				}
			}
		} else {
			Session::flash('error', 'Error al procesar');
			return Redirect::back();
		}
		
		Cart::destroy();
		return Redirect::to('shop');
	}
}