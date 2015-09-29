@extends('layout')

@section('content')

	<div class="container">
		<h4>Sign In</h4>
		<div class="section">
			{{ Form::open(array('url' => 'signin')) }}
				<div class="input-field">
		            <input name="username" type="text" class="validate">
		            <label for="username">Nombre de Usuario</label>
		        </div>

		        <div class="input-field">
		            <input name="password" type="password" class="validate">
		            <label for="password">Password</label>
		        </div>

		        <div class="input-field">
		            <input name="nombre" type="text" class="validate">
		            <label for="nombre">Nombre</label>
		        </div>

		        <div class="input-field">
		            <input name="apellido" type="text" class="validate">
		            <label for="apellido">Apellido</label>
		        </div>

		        <div class="input-field">
		            <input name="cedula" type="text" class="validate">
		            <label for="cedula">Correo</label>
		        </div>

		        <div class="input-field">
		            <input name="celular" type="email" class="validate">
		            <label for="celular">Celular</label>
		        </div>

		        <div class="input-field">
		            <input name="telefono" type="text" class="validate">
		            <label for="telefono">Telefono</label>
		        </div>

		        <div class="input-field">
		            <input name="direccion" type="text" class="validate">
		            <label for="direccion">Direccion</label>
		        </div>

		        <div class="input-field">
		        	<select class="browser-default">
		        		@foreach($estados as $estado)
		        			<option value="{{$estado->id}}">{{ $estado->nombre }}</option>
		        		@endforeach
		        	</select>
		        </div>

		        <div class="input-field">
		        	<select class="browser-default">
		        		@foreach ($sucursales as $sucursal)
		        			<option value="{{$sucursal->id}}">{{ $sucursal->nombre }}</option>
		        		@endforeach
		        	</select>
		        </div>

		        <button class="btn waves-effect waves-light" type="submit">Sign In
				    <i class="material-icons right">send</i>
				</button>
	        {{ Form::close() }}
        </div>
        @if ( Session::has('success'))
        	<h1>Su Usuario se ha creado satisfactoriamente</h1>
        @endif
        @if ( Session::has('error'))
        	<h1>Ha ocurrido un error</h1>
        @endif
	</div>

@stop