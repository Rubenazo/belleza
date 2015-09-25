@extends('layout')

@section('content')

<div id="login" class="modal">
    <div class="modal-content">
      <h4>Login</h4>
        <div class="input-field">
            <input id="username" type="text" class="validate">
            <label for="username">Username</label>
        </div>
        <div class="input-field">
            <input id="password" type="password" class="validate">
            <label for="password">Password</label>
        </div>
    </div>
    <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
    </div>
</div>

<div id="fullpage">
    <div class="section" style="background-image: url('img/n.jpg')">Some section</div>
    <div class="section" style="background-image: url('img/h.jpg')">Some section</div>
    <div class="section" style="background-color: yellow">Some section</div>
    <div class="section" style="background-color: white">Some section</div>
</div>

@stop  