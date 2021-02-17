@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Mis polizas</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Número de Poliza</th>
                                <th>Precio final</th>
                                <th>Fecha de inicio</th>
                                <th>Fecha de finalización</th>
                                <th>Placa del vehículo</th>
                                <th>Sucursal</th>
                                <th>Firmado</th>
                                <th>Acciones</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($policies as $policy)
                                <tr>
                                    <td>{{$policy->policy_number}}</td>
                                    <td>{{$policy->total_amount}} $</td>
                                    <td>{{$policy->date_start}}</td>
                                    <td>{{$policy->date_end}}</td>
                                    <td>{{$policy->vehicle->license_plate}}</td>
                                    <td>{{$policy->branch_office->name}}</td>
                                    <td>{{$policy->signed==0?'No':'Yes'}}</td>
                                    <td>
                                        <a href="{{route('policies.view',$policy->id)}}" class="btn btn-info">Ver </a>
                                        @if($policy->signed==0)
                                            <a href="{{route('policies.signing',$policy->id)}}"
                                               class="btn btn-info">Firmar </a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
