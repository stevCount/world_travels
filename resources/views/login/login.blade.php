@extends('base')
 
@section('title', 'Login')

@section('styles')
    <link href="/css/login/login.css" rel="stylesheet">
@stop
 
@section('content')
    <div class="container mt-4">
        <h1 class="text-center">World Travels</h1>
        @error('message')
            <div class="alert alert-danger" role="alert">
                {{  $message }}
            </div>
        @enderror
        <form action="" class="form login-form" action="{{ route('login.send') }}" method="POST">
            @csrf
            <div class="row">
                <div class="col">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="mail-addon"><i class="bi bi-person"></i></span>
                        <input type="mail" class="form-control" placeholder="Correo electronico" aria-label="Correo Electronico" name="email">
                    </div>
                </div>
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="password-addon"><i class="bi bi-file-lock2"></i></span>
                        <input type="password" class="form-control" placeholder="Password" aria-label="Password" name="password">
                    </div>
                </div>
            </div>

            <div class="row mt-5">
                <button type="submit" class="btn btn-primary mb-3">Login</button>
            </div>

        </form>
    </div>
@stop

@section('scripts')
<script>
    $(document).ready(function () {
        console.log("Jquery en linea");
    });
</script>
@stop


