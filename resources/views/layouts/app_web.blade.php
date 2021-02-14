<!DOCTYPE html>
<html lang="en">
    <head>
        @include('layouts.web.head')
    </head>
    <body id="page-top">
        @include('layouts.web.nav')
        @include('layouts.web.header')
        @yield('content')
        @include('layouts.web.footer')
        @include('layouts.web.footer-scripts')
    </body>
</html>
        