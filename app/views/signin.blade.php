@extends('layout')

@section('content')

	<div class="container">
		<h4>Sign In</h4>
		<div class="section">
			{{ Form::open(array('url' => 'signin')) }}
				<div class="input-field">
		            <input name="username" type="text" class="validate">
		            <label for="username">Username</label>
		        </div>
		        <div class="input-field">
		            <input name="password" type="password" class="validate">
		            <label for="password">Password</label>
		        </div>

		        <button class="btn waves-effect waves-light" type="submit">Sign In
				    <i class="material-icons right">send</i>
				</button>
	        {{ Form::close() }}
        </div>
        @if ( Session::has('success'))
        	<h1>pizza</h1>
        @endif
        @if ( Session::has('error'))
        	<h1>no hay pizza</h1>
        @endif
	</div>

@stop