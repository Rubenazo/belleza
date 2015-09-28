@extends('layout')

@section('content')

<div class="container">

	<h3>Tienda</h3>

	<ul class="collection">
		@foreach($items as $item)
        	<li class="collection-item">
        		<div>
        			<img src="{{'img/'. $item->imagen .'.jpg'}}">
        			<a href="{{URL::to('additem/'.$item->id)}}">{{ $item->nombre }}</a>
        		</div>
        	</li>
		@endforeach
    </ul>

</div>

@stop

