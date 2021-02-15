<!DOCTYPE html>
<html lang="en">
    <head>
        @include('layouts.partials.head')
    </head>
    <body>
        <div id="app">
            @include('layouts.partials.nav')
            @include('layouts.partials.header')
            <main class="py-4">
                @yield('content')
            </main>
            @include('layouts.partials.footer')
        </div>
        @include('layouts.partials.footer-scripts')
    </body>
</html>