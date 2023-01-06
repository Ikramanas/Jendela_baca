<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>
      {{$title}} - Jendela Baca
  </title>

  @include('admin.partials.styles')

</head>

<body>

@include('admin.partials.header')

@include('admin.partials.sidebar')

<main id="main" class="main">
    @yield('content')
</main>  <!-- End #main -->

@include('admin.partials.footer')
@include('admin.partials.script')
  

</body>

</html>