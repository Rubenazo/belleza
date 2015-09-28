@extends('layout')

@section('content')

<div class="container">

	<h1>Carrito</h1>

	<table>
		<tr>
			@foreach($items as $item)
				<td>
					<a href="{{URL::to('additem/'.$item->id)}}">{{ $item->nombre }}</a>
				</td>
			@endforeach
		</tr>
	</table>

</div>

@stop