<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>{{ $title }}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->

        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="css/materialize.css">
        <link rel="stylesheet" href="css/fullPage.css">
        <link rel="stylesheet" href="css/custom.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
        <nav class="grey darken-4" role="navigation">
            <div class="nav-wrapper container">
                {{ HTML::link('/','Logo', array('id'=>'logo-container', 'class'=>'brand-logo')) }}
                
                <ul class="right hide-on-med-and-down">
                    <li><a class="waves-effect waves-light" href="shop">Tienda</a></li>
                    @if ( ! Auth::check() )
                        <li><a class="waves-effect waves-light modal-trigger" href="#login">Login</a></li>
                        <li><a class="waves-effect waves-light" href="signin">Sign in</a></li>
                    @else
                        <li><a class="waves-effect waves-light" href="logout">Logout</a></li>
                        <li><a class="waves-effect waves-light" href="cart"><i class="material-icons">shopping_cart</i></a></li>
                    @endif
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="#">Login</a></li>
                    <li><a class="waves-effect" href="">Sign in</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>

        @if ( ! Auth::check() )
            <div id="login" class="modal">
                <div class="modal-content">
                    <h4>Login</h4>
                    {{ Form::open(array('url' => 'login')) }}
                        <div class="input-field">
                            <input name="username" type="text" class="validate">
                            <label for="username">Username</label>
                        </div>
                        <div class="input-field">
                            <input name="password" type="password" class="validate">
                            <label for="password">Password</label>
                        </div>
                        <button class="btn waves-effect waves-light" type="submit">Login
                            <i class="material-icons right">send</i>
                        </button>
                    {{ Form::close() }}
                    @if ( Session::has('error') )
                        <h1>pizza</h1>
                    @endif
                </div>
                <div class="modal-footer">
                    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                </div>
            </div>
        @endif

        @yield('content')

        <footer class="page-footer grey darken-4 white-text">
            <div class="container">
                @if ( Auth::check() )
                    <h6>Hola {{ Auth::user()->username }}</h6>
                @endif
            </div>
        </footer>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.3.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>
        <script src="js/fullPage.js"></script>
        <script src="js/custom.js"></script>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='https://www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
        </script>
    </body>
</html>
