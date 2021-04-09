<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  @include('layouts.struct.components.body.navbarSide.logo')

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    {{-- @include('layouts.struct.components.body.navbarSide.userPhotoName') --}}


    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        @include('layouts.struct.components.body.navbarSide.menu')
      </ul>
    </nav>

    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>