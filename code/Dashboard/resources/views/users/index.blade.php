@extends('layouts.struct.index')

@section('pageTitle') Percursos Pedestres em Mértola | Dashboard @endsection
@section('breadcrumb')
    <li class="breadcrumb-item">Definições</li>
    <li class="breadcrumb-item active">Utilizadores</li>
@endsection


{{-- main content --}}
@section('content')

    @include('users.modal_InsertNew')


    <div class="row">
        @section('pageTitle') <h1>Utilizadores do Sistema</h1> @endsection

        <div class="card-body">
            <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <div class="dt-buttons btn-group flex-wrap">
                            <button id="btnInsertUser" type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#insertUser"><i class="fas fa-user-plus"></i> Adicionar Novo </button>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">

                        <table id="tableUsers" class="table table-bordered table-striped dataTable dtr-inline"
                               role="grid" aria-describedby="table_users">
                            <thead>
                                <tr role="row">
                                    <th></th>
                                    <th class="sorting_asc" width="30%" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Nome: activa a ordenação da coluna">Nome</th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Email: activa a ordenação da coluna">Email</th>
                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1">Ações</th>
                                </tr>
                            </thead>

                            <tbody>
                            @foreach ($users as $user)
                                <tr>
                                    <td width="5%" style="vertical-align: middle;"><img src="{{ asset($user->photo) }}" class="img-circle elevation-2" alt="User Image" style="width: 100px; height: 100px"></td>
                                    <td class="sorting_1 dtr-control" style="vertical-align: middle;" >{{ $user->name }}</td>
                                    <td style="vertical-align: middle;" >{{ $user->email }}</td>
                                    <td style="vertical-align: middle;"  width="8%">
                                        <div class="btn-group" role="group" aria-label="Basic example">
                                            <button class="btn btn-outline-primary"><i class="far fa-eye"></i></button>
                                            <button class="btn btn-outline-warning" id="editUser" data-toggle="modal" data-target='#editUser' data-id="{{ $user->id }}"><i class="fas fa-user-edit"></i></button>
                                            <button class="btn btn-outline-danger" href="#"><i class="fas fa-trash-alt"></i></button>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                            <tfoot></tfoot>
                        </table>

                    </div>
                </div>
            </div>
        </div>
        @toastr_js
        @toastr_render


        <!-- Javascript for: DataTables, Modal... -->
        <script>
            //open insert modal
            $(function () {
                //table buttons
                $("#tableUsers").DataTable({
                    "responsive": true,
                    "lengthChange": false,
                    "autoWidth": false,
                    "paging": true,
                    "searching": true,
                    "ordering": true,
                    "info": true,
                    "pageLength": 5,
                    "language": {
                        "lengthMenu": "Registos: _MENU_",
                        "zeroRecords": "Não foram encontrados registos.",
                        "info": "Página _PAGE_ de _PAGES_",
                        "infoEmpty": "Sem registos disponíveis",
                        "infoFiltered": "(filtrado de _MAX_ registos.)",
                        "search": "Pesquisar",
                        "paginate": {
                            "next": "<i class='fa fa-chevron-right'></i>",
                            "previous": "<i class='fa fa-chevron-left'></i>"
                        },
                    },
                    buttons: [
                        {
                            id: 'btnExportPdf',
                            extend: 'pdfHtml5',
                            orientation: 'portrait',
                            message: 'Relatório: Listagem de utilizadores.',
                            title: 'GND - Listagem Atletas',
                            pageSize: 'LEGAL',
                            text: '<i class="fas fa-print"></i> Exportar PDF',
                            className: 'btn-warning',
                            exportOptions: {
                                columns: [1, 2]
                            }
                        },
                        {
                            id: 'btnPrint',
                            extend: 'print',
                            text: '<i class="fa fa-print"></i> Imprimir',
                            className: 'btn-info',
                            exportOptions: {
                                columns: [1, 2]
                            }
                        }
                    ]
                }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            });

            //flash message for CRUD
            toastr.options = {
                "closeButton": false,
                "debug": false,
                "newestOnTop": true,
                "progressBar": true,
                "positionClass": "toast-top-right",
                "preventDuplicates": true,
                "onclick": null,
                "showDuration": "300",
                "hideDuration": "1000",
                "timeOut": "5000",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "fadeIn",
                "hideMethod": "fadeOut"
            }
            @if(Session::has('message'))  toastr.success("{{ session('message') }}");   @endif
            @if(Session::has('error'))    toastr.error("{{ session('error') }}");       @endif

        </script>



        <div class="clearfix hidden-md-up"></div><!-- fix for small devices only -->
    </div>

@endsection
