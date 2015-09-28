<?php

class AuthController extends BaseController {

	public function showSignIn() 
	{
		$title = 'Sign In';
		return View::make('signin')
		->with('title', $title);
	}

	public function signIn() 
	{
		$inp   = Input::all();
		$rules =  array(
			'username' 	=> 'required',
			'password'	=> 'required',
		);
		$msg = array(
			'required' => 'Campo obligatorio.',
		);

		$validator = Validator::make($inp, $rules, $msg);
		if ($validator->fails()) {
			return Redirect::back()->withErrors($validator)->withInput();
		}

		$user = new User;
		$user->username = $inp['username'];
		$user->password = Hash::make($inp['password']);

		if ($user->save()) {
			Session::flash('success','Usuario creado satisfactoriamente');
			return Redirect::back();
		} else
		{
			Session::flash('error','Error al crear al usuario');
			return Redirect::back()->withInput();
		}	
	}

	public function login() 
	{
		$user = array(
  			'username' => Input::get('username'),
  			'password' => Input::get('password')
		);

		if (Auth::attempt($user)) {
			return Redirect::to('/')->with('notice', 'Has iniciado sesion exitosamente');
		} else {
			return Redirect::to('/')->with('error', 'El usuario o contraseña es incorrecto')->withInput();
		}	
	}

	public function logout() 
	{
		Cart::destroy();
		Auth::logout();
		return Redirect::to('/');
	}

}