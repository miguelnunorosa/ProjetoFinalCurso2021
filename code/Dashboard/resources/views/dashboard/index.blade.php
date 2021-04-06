<html style="height: auto;" lang="pt">
<head>
    @include('dashboard.components.head.meta')
    <meta name="csrf-token" content="{{ csrf_token() }}"><!-- CSRF Token -->
    
    @include('dashboard.components.head.fonts')
    @include('dashboard.components.head.css')
   
    <title>Percursos Pedestres em Mértola | Dashboard</title>


<body class="hold-transition sidebar-mini sidebar-collapse layout-fixed layout-navbar-fixed layout-footer-fixed" style="height: auto;">
    
    <div class="wrapper">
        @include('dashboard.components.body.navbarTop.index') <!-- Navbar -->
        @include('dashboard.components.body.navbarSide.index')<!-- Main Sidebar Container -->


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper" style="min-height: 1302.4px;">        
            @include('dashboard.components.body.bodyHeader')<!-- Content Header (Page header) -->

            <div class="content"> <!-- Main content -->
                <div class="container-fluid">
                    @yield('content')
                </div><!-- /.container-fluid -->
            
            </div><!-- /.content -->
        </div> <!-- /.content-wrapper -->
    
        @include('dashboard.components.footer.mainFooter')<!-- Main Footer -->
    </div><!-- ./wrapper -->
    

    <!-- REQUIRED SCRIPTS -->
    @include('dashboard.components.footer.jsBottom')
</body>
</html>