<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduFun</title>
    @vite(['resources/sass/app.scss',
    'resources/js/app.js', 'public/bootstrap/bootstrap-4.5.0-dist/css/bootstrap.css'])
</head>
<body class="bg-body">

   <x-navbar/>

    @yield('content')

    @include('components.footer')

</body>
</html>
