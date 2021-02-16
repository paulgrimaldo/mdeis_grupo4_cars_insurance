<nav class="navbar navbar-expand-md navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{ config('app.name', 'Auto-Seguro') }}
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            @php
                function activeMenu($url) {
                    return request()->is($url) ? 'active' : '';
                }
            @endphp
            <ul class="navbar-nav mr-auto"></ul>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item">
                        <a class="nav-link {{ activeMenu('/') }}" href="{{ url('/') }}">Inicio</a>
                    </li>
                    <li class="nav-item"><a class="nav-link {{ activeMenu('login') }}" href="{{ route('login') }}">{{ __('Entrar') }}</a></li>
                    <li class="nav-item"><a class="nav-link {{ activeMenu('register') }}" href="{{ route('register') }}">{{ __('Registrarse') }}</a></li>
                @else
                    <li class="nav-item">
                        <a class="nav-link {{ activeMenu('/') }}" href="{{ route('home') }}">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ activeMenu('messages') }}" href="{{ route('home') }}">Cotización</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            Configuraciones <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('vehicle_makes.index') }}"> Marcas de Vehiculos</a>
                            <a class="dropdown-item" href="{{ route('vehicle_models.index') }}"> Modelos de Vehiculos</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                                {{ __('Salir') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                    
                @endguest
            </ul>
        </div>
    </div>
</nav>


<div class="row">
                            <div class="col-md-12 col-lg-12 text-right" style="margin-top:10px;margin-bottom: 10px;">
                                
                            </div>
                        </div>   