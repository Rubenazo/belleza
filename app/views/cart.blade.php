@extends('layout')

@section('content')

<div class="container">

	<h1>Carrito</h1>
	
	<table>
		<tr>
			<th>Producto</th>
			<th>Cantidad</th>
			<th>Total a pagar</th>
		</tr>
		@foreach(Cart::content() as $item)
			<tr>
				<td>{{ $item['name'] }}</td>
				<td>{{ $item['qty'] }}</td>
				<td>{{ $item['price'] * $item['qty'] }} Bs</td>
			</tr>
		@endforeach
	</table>

	<a class="btn waves-effect waves-light" href="process">Procesar
        <i class="material-icons right">payment</i>
    </a>

    @if ( Session::has('error') )
        <h1>{{ Session::get('error') }}</h1>
    @endif

</div>

@stop