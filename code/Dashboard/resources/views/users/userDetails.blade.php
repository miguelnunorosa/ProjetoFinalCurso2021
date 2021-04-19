@extends('layouts.struct.index')

@section('pageTitle') Percursos Pedestres em Mértola | Dashboard @endsection
@section('breadcrumb')
    <li class="breadcrumb-item">Definições</li>
    <li class="breadcrumb-item">Utilizadores</li>
    <li class="breadcrumb-item active">Detalhes utilizador</li>
@endsection


{{-- main content --}}
@section('content')


    <div class="row">
        @section('pageTitle') <h1>Detalhes utilizador {{ $user->name }}</h1> @endsection



        <div class="input-group mb-3">
            <div class="btn-group" role="group" aria-label="Basic example">
                <button id="btnChangePass" type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#changePass_modal_name"><i class="fas fa-unlock-alt"></i> Alterar Password</button>
                <button id="btnChangePhoto" type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#changePhoto"><i class="fas fa-camera"></i> Atualizar Foto</button>
            </div>

            <!-- Button trigger modal -->
            {{-- @include('users.modal_changePhoto') --}}
        </div>




        <div class="mb-3">
            <div class="card card-widget widget-user">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-info">
                    <h1 class="widget-user-username"><strong>{{ Auth::user()->name }}</strong></h1>
                    <!--<h5 class="widget-user-desc">Founder &amp; CEO</h5>-->
                </div>
                <div class="widget-user-image">
                    <img class="img-circle elevation-2" src="{{ Auth::user()->photo }}" alt="User Avatar">
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-sm-4 border-right">
                            <div class="description-block">
                                <h5 class="description-header">{{ Auth::user()->created_at }}</h5>
                                <span class="description-text">Registado</span>
                            </div>
                            <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-4 border-right">
                            <div class="description-block">
                                <h5 class="description-header">xxx</h5>
                                <span class="description-text">xxxxxxx</span>
                            </div>
                            <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-4">
                            <div class="description-block">
                                <h5 class="description-header">xxx</h5>
                                <span class="description-text">xxxxxxx</span>
                            </div>
                            <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
            </div>
        </div>














        <!-- Custom Javascript -->
        <script>
        </script>
        <div class="clearfix hidden-md-up"></div><!-- fix for small devices only -->
    </div>

@endsection
