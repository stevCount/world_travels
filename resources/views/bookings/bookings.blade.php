@extends('base')
 
@section('title', 'Bookings')

@section('styles')
    <link href="/css/bookings/bookings.css" rel="stylesheet">
@stop
 
@section('content')

<!-- Tabs navs -->
<ul class="nav nav-tabs mb-3" id="ex1" role="tablist">
    <li class="nav-item" role="presentation">
      <a
        class="nav-link active"
        id="ex1-tab-1"
        data-mdb-toggle="tab"
        href="#ex1-tabs-1"
        role="tab"
        aria-controls="ex1-tabs-1"
        aria-selected="true"
        >Ida</a
      >
    </li>
    <li class="nav-item" role="presentation">
      <a
        class="nav-link"
        id="ex1-tab-2"
        data-mdb-toggle="tab"
        href="#ex1-tabs-2"
        role="tab"
        aria-controls="ex1-tabs-2"
        aria-selected="false"
        >Ida y vuelta</a
      >
    </li>
  </ul>
  <!-- Tabs navs -->
  
  <!-- Tabs content -->
  <div class="tab-content" id="ex1-content">

    <div class="tab-pane fade show active" id="ex1-tabs-1" role="tabpanel" aria-labelledby="ex1-tab-1">

        <div class="row mt-5">
            <div class="col-md-6">
                <label for="Seating" class="">Desde</label>
            </div>
            <div class="col-md-6">
                <label for="campo" class="">Hacia</label>
            </div>
        </div>


        <div class="row mt-5">
            <div class="col-md-6">
                <label for="Seating" class="">Asiento</label>
                <input type="text" class="form-control" id="Seating" placeholder="Asiento" name="Seating">
            </div>
            <div class="col-md-6">
                <label for="campo" class="">Tipo de asiento</label>
                <input type="text" class="form-control" id="campo" placeholder="campo" name="campo" id="campo">
            </div>
        </div>

        <div class="row mt-5">
            <div class="form-check check-me-travel">
                <input class="form-check-input" type="checkbox" value="" id="checkUser">
                <label class="form-check-label" for="checkUser">
                  Quiero reservarlo con mi usuario.
                </label>
            </div>
        </div>

        <div class="userRow" id="userRow" style="">
            <div class="row mt-5">
                <div class="col-md-6">
                    <label for="Seating" class="">Nombres</label>
                    <input type="text" class="form-control" id="firstNames" placeholder="Nombres" name="firstNames" required="required">
                </div>
                <div class="col-md-6">
                    <label for="campo" class="">Apellidos</label>
                    <input type="text" class="form-control" id="lastNames" placeholder="Apellidos" name="lastNames" id="lastNames">
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-md-6">
                    <label for="Seating" class="">Correo</label>
                    <input type="email" class="form-control" id="email" placeholder="Correo electronico" name="email" required="required">
                </div>
                <div class="col-md-6">
                    <label for="campo" class="">Celular</label>
                    <input type="text" class="form-control" id="mobileNumber" placeholder="Celular" name="mobileNumber" id="mobileNumber">
                </div>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-md-6">
                <label for="campo" class="">Fecha Salida</label>
                <input type="date" class="form-control" id="campo" placeholder="campo" name="campo" id="campo">
            </div>
        </div>

        <div class="row text-center mt-5">
            <button type="button" class="btn btn-success">Reservar</button>
        </div>
    </div>

    <div class="tab-pane fade" id="ex1-tabs-2" role="tabpanel" aria-labelledby="ex1-tab-2">


    </div>

  </div>
  <!-- Tabs content -->
    <!-- Modal -->
    <div class="modal fade" id="modalSeatings" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
            </div>
            <div class="modal-body">
                Seating selects
            </div>
        </div>
        </div>
  </div>

@stop

@section('scripts')
<script src="/js/bookings/bookings.js"></script>
@stop


