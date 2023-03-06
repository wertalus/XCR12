<!doctype html>
<html class="h-100" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'XCR12') }}</title>

    <!-- Fonts -->

    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide">
    
    <!-- Scripts -->
    @livewireStyles
    @vite([
        'resources/sass/app.scss', 
        'resources/js/app.js',
        ])

</head>
<body class="d-flex flex-column h-100">
    <div id="app">

        @livewire('navbar')
        @livewire('sidebar')
    </div>
        @livewire('footer')
        @livewireScripts

</body>
</html>
