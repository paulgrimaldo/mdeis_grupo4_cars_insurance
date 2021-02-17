@extends('voyager::master')

@section('page_title', 'Reports')

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-company"></i> Reports
        </h1>
        @include('voyager::multilingual.language-selector')
    </div>
@stop

@section('content')
    <div class="page-content browse container-fluid">
        @include('voyager::alerts')
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                        <div class="card">
                            <div class="card-header"><strong>Reporte de cotizaciones emitidas</strong></div>
                            <div class="card-body">
                                <br/>
                                <form method="POST" action="{{ route('reports.quotation') }}"
                                      accept-charset="UTF-8"
                                      class="form-horizontal" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        <div class="form-group col-12 col-md-4">
                                            <label>Fecha inicio *</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="dateStart" id="dateStart"
                                                       value="{{$date}}"
                                                       required="">
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label>Fecha fin *</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="dateEnd" id="dateEnd"
                                                       value="{{$date}}"
                                                       required="">
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label>Concesionario</label>
                                            <select name="branchOfficeId" id="branchOfficeId" class="form-control">
                                                <option value="">Ninguno</option>
                                                @foreach($branch_officies as $item)
                                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                    <button class="btn btn-success" type="submit">Generar reporte</button>
                                </form>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header"><strong>Reporte de pólizas emitidas</strong></div>
                            <div class="card-body">
                                <br/>
                                <form method="POST" action="{{ route('reports.policies') }}"
                                      accept-charset="UTF-8"
                                      class="form-horizontal" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        <div class="form-group col-12 col-md-4">
                                            <label>Fecha inicio *</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="dateStart"
                                                       value="{{$date}}" required="">
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label>Fecha fin *</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="dateEnd" value="{{$date}}"
                                                       required="">
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label>Concesionario</label>
                                            <select name="branchOfficeId" id="branchOfficeId" class="form-control">
                                                <option value="">Ninguno</option>
                                                @foreach($branch_officies as $item)
                                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                    <button class="btn btn-success" type="submit">Generar
                                        reporte
                                    </button>
                                </form>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header"><strong>Reporte de cotizaciones sin confirmar</strong></div>
                            <div class="card-body">
                                <br/>
                                <form method="POST" action="{{ route('reports.unconfirmed') }}"
                                      accept-charset="UTF-8"
                                      class="form-horizontal" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        <div class="form-group col-12 col-md-4">
                                            <label>Fecha inicio *</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="dateStart"
                                                       value="{{$date}}" required="">
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label>Fecha fin *</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="dateEnd" value="{{$date}}"
                                                       required="">
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label>Concesionario</label>
                                            <select name="branchOfficeId" id="branchOfficeId" class="form-control">
                                                <option value="">Ninguno</option>
                                                @foreach($branch_officies as $item)
                                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                    <button class="btn btn-success" type="submit">Generar reporte
                                    </button>
                                </form>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header"><strong>Reporte de pólizas vencidas</strong></div>
                            <div class="card-body">
                                <br/>
                                <form method="POST" action="{{ route('reports.expired') }}"
                                      accept-charset="UTF-8"
                                      class="form-horizontal" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        <div class="form-group col-12 col-md-4">
                                            <label>Fecha inicio *</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="dateStart"
                                                       value="{{$date}}" required="">
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label>Fecha fin *</label>
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="dateEnd" value="{{$date}}"
                                                       required="">
                                            </div>
                                        </div>
                                        <div class="form-group col-12 col-md-4">
                                            <label>Concesionario</label>
                                            <select name="branchOfficeId" id="branchOfficeId" class="form-control">
                                                <option value="">Ninguno</option>
                                                @foreach($branch_officies as $item)
                                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                    <button class="btn btn-success" type="submit">Generar reporte
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

