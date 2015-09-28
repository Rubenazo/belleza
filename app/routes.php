<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', 'HomeController@showHome');

Route::get('signin', 'AuthController@showSignIn');
Route::post('signin', 'AuthController@signIn');

Route::post('login', 'AuthController@login');
Route::get('logout', 'AuthController@logout');

Route::get('shop', 'ShoppingController@showShop');
Route::get('cart', 'ShoppingController@showCart');

Route::get('additem/{id}', 'ShoppingController@addItem');
Route::get('process', 'ShoppingController@process');



