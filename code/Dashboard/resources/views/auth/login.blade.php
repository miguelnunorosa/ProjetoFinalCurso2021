<html lang="pt">

<head>
    @include('layouts.struct.components.head.meta')
    @include('layouts.struct.components.head.fonts')
    @include('layouts.struct.components.head.css')
    @include('layouts.struct.components.head.cssLogin')
    <title>Percursos Pedestres em Mértola | Dashboard</title>
    <style type="text/css">
        img {
            width: 100%;
            height: auto;
        }
    </style>
</head>

<body class="login-page" style="min-height: 466px;">

    <div class="login-box">

        <div class="card card-outline card-success">
            <div class="card-header text-center">
                <img src="{{ asset('img/system/logo.png') }}"/>
            </div>

            <div class="card-body">
                <form method="POST" action="{{ route('login') }}">
                    @csrf

                    <div class="input-group mb-3">
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email" autofocus>
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>

                    <div class="input-group mb-3">
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label for="remember"> {{ __('Memorizar') }} </label>
                            </div>
                        </div>

                        <div class="col-4">
                            <button type="submit" class="btn btn-primary"> {{ __('Login') }} </button>
                        </div>
                    </div>


                </form>

                <p class="mb-1">
                    @if (Route::has('password.request'))
                        <a class="btn btn-link" href="{{ route('password.request') }}"> {{ __('Recuperar Password?') }} </a>
                    @endif
                </p>

            </div><!-- ./card-body -->
        </div><!-- ./card -->

    </div> <!-- /.login-box -->


    @include('layouts.struct.components.footer.jsBottom')
</body>
