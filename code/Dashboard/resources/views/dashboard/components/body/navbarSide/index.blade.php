<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  @include('dashboard.components.body.navbarSide.logo')

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    {{-- @include('dashboard.components.body.navbarSide.userPhotoName') --}}


    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        @include('dashboard.components.body.navbarSide.menu')
      </ul>
    </nav>

    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>