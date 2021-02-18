@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>
                <div class="card-body">
                  <h1 class="display-5">Modelos de Vehiculos</h1>    
                  <table class="table table-striped">
                    <thead>
                        <tr>
                          <td>ID</td>
                          <td>Name</td>
                          <td>Email</td>
                          <td colspan = 2>Actions</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($vehicle_models as $vehicle_model)
                        <tr>
                            <td>{{$vehicle_model->id}}</td>
                            <td>{{$vehicle_model->name}}</td>
                            <td>{{$vehicle_model->code}}</td>
                            
                            <td>
                                <a href="{{ route('vehicle_models.edit',$vehicle_model->id)}}" class="btn btn-primary">Edit</a>
                            </td>
                            <td>
                                <form action="{{ route('vehicle_models.destroy', $vehicle_model->id)}}" method="post">
                                  @csrf
                                  @method('DELETE')
                                  <button class="btn btn-danger" type="submit">Delete</button>
                                </form>
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
<div class="row">
<div class="col-sm-12">
  
<div>
</div>
@endsection