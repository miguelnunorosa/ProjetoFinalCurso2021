<nav class="main-header navbar navbar-expand navbar-white navbar-light">
  <!-- Left navbar links -->
  <ul class="navbar-nav">
    <li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
    <li class="nav-item d-none d-sm-inline-block"><a href="{{ route('dashboard') }}" class="nav-link">Percursos Pedestres em Mértola</a></li>
    <li class="nav-item d-none d-sm-inline-block"></li>
  </ul>

  <!-- Right navbar links -->
  <ul class="navbar-nav ml-auto">

    <!-- Messages Dropdown Menu -->
    {{-- @include('layouts.struct.components.body.navbarTop.messages') --}}

    <!-- Notifications Dropdown Menu -->
    {{-- @include('layouts.struct.components.body.navbarTop.notifications') --}}


    @include('layouts.struct.components.body.navbarTop.userOptions')

  </ul>
</nav>
