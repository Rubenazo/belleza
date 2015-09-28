@extends('layout')

@section('content')

<div class="container">

	<h3>Carrito</h3>
	
	<table>
		<thead>
			<tr>
				<th>Producto</th>
				<th>Cantidad</th>
				<th>Total a pagar</th>
			</tr>
		</thead>
		<tbody>
			@foreach(Cart::content() as $item)
				<tr>
					<td data-field="nombre">{{ $item['name'] }}</td>
					<td data-field="cantidad">{{ $item['qty'] }}</td>
					<td data-field="precio">{{ $item['price'] * $item['qty'] }} Bs</td>
				</tr>
			@endforeach
		</tbody>
	</table>

	<a class="btn waves-effect waves-light" href="process">Procesar
        <i class="material-icons right">payment</i>
    </a>

    @if ( Session::has('error') )
        <p>{{ Session::get('error') }}</p>
    @endif

</div>

@stop