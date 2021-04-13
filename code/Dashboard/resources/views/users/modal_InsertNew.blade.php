<!-- Modal -->
<div id="insertUser" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="insertUser" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Inserir novo <strong>Utilizador</strong></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>


            <div class="modal-body">
                <form class="form-group" action="{{ route('users.store') }}" method="POST">@csrf
                    {{--  <input type="hidden" name="_token" value="{{ csrf_token() }}">--}}


                    <div class="col-sm-10">
                      <label class="control-label col-sm-2">Nome</label>
                      <input class="form-control" type="text" name="form_name" id="name" placeholder="Nome" required maxlength="220" value="{{old("name")}}">
                    </div>

                    <div class="col-sm-10">
                      <label class="control-label col-sm-2">Email</label>
                      <input class="form-control" type="email" name="form_email" id="email" placeholder="Email" required maxlength="220" value="{{old("email")}}">
                    </div>

                    <div class="col-sm-10">
                      <label class="control-label col-sm-2">Password</label>
                      <input class="form-control" type="password" name="form_password" id="password" placeholder="Password" required maxlength="220" value="{{old("password")}}">
                    </div>

                    <!--<div class="col-sm-10 form-group">
                      <label for="userPhoto">Fotografia</label>
                      <input type="file" class="form-control-file" id="form_photo">
                    </div>-->

                    <br>
                    <div class="modal-footer  justify-content-between">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-success">Guardar</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
