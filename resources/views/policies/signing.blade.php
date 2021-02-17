@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Firmar poliza</div>
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Número de Poliza</th>
                                <th>Asegurado</th>
                                <th>Precio</th>
                                <th>Descuento</th>
                                <th>Precio final</th>
                                <th>Fecha de inicio</th>
                                <th>Fecha de finalización</th>
                                <th>Placa del vehículo</th>
                                <th>Sucursal</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>{{$policy->policy_number}}</td>
                                <td>{{$policy->driver->first_name.' '.$policy->driver->last_name}}</td>
                                <td>{{$policy->amount}} $</td>
                                <td>{{$policy->discount}} $</td>
                                <td>{{$policy->total_amount}} $</td>
                                <td>{{$policy->date_start}}</td>
                                <td>{{$policy->date_end}}</td>
                                <td>{{$policy->vehicle->license_plate}}</td>
                                <td>{{$policy->branch_office->name}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="row justify-content-center text-center">
                            <div class="col-md-12">
                                Estoy de acuerdo con la información presentada
                                <form action="{{route('policies.signing.store', $policy->id)}}" method="POST">
                                    @csrf
                                    <div class="form-group">
                                        <label for="sign">Firmar electronicamente</label>
                                        <input type="checkbox" name="sign" required id="sign">
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success">Enviar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
