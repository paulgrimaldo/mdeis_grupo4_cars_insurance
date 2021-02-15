<!DOCTYPE html>
<html lang="en">
    <head>
        @include('layouts.partials.head')
    </head>
    <body>

        <div id="app">
            @include('layouts.partials.nav')
            @include('layouts.partials.header')
            <div class="col-sm-12">
            @if(session()->get('success'))
                <div class="alert alert-success">
                {{ session()->get('success') }}  
                </div>
            @endif
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div><br />
            @endif
        </div>
            <main class="py-4">
                @yield('content')
            </main>
            @include('layouts.partials.footer')
        </div>
        @include('layouts.partials.footer-scripts')
    </body>
</html>