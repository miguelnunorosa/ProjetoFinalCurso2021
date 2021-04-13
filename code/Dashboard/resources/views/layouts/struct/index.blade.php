<html style="height: auto;" lang="pt">
<head>
    @include('layouts.struct.components.head.meta')
    <meta name="csrf-token" content="{{ csrf_token() }}"><!-- CSRF Token -->

    @include('layouts.struct.components.head.fonts')
    @include('layouts.struct.components.head.css')
    @include('layouts.struct.components.head.jsTop')

    <title>Percursos Pedestres em Mértola | Dashboard</title>


<body class="hold-transition sidebar-mini sidebar-collapse layout-fixed layout-navbar-fixed layout-footer-fixed" style="height: auto;">

    <div class="wrapper">
        @include('layouts.struct.components.body.navbarTop.index') <!-- Navbar -->
        @include('layouts.struct.components.body.navbarSide.index')<!-- Main Sidebar Container -->


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper" style="min-height: 1302.4px;">
            @include('layouts.struct.components.body.bodyHeader')<!-- Content Header (Page header) -->

            <div class="content"> <!-- Main content -->
                <div class="container-fluid">
                    @yield('content')
                </div><!-- /.container-fluid -->

            </div><!-- /.content -->
        </div> <!-- /.content-wrapper -->

        @include('layouts.struct.components.footer.mainFooter')<!-- Main Footer -->
    </div><!-- ./wrapper -->


    <!-- REQUIRED SCRIPTS -->
    @include('layouts.struct.components.footer.jsBottom')
</body>
</html>
