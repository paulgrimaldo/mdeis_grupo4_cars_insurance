@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Listado') }}</div>
                <div class="card-body">
                  <h1 class="display-5">Marcas de Vehiculos</h1>    
                  <table class="table table-striped">
                    <thead>
                        <tr>
                          <td>ID</td>
                          <td>Name</td>
                          <td>Code</td>
                          <td>Actions</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($vehicle_makes as $vehicle_make)
                        <tr>
                            <td>{{$vehicle_make->id}}</td>
                            <td>{{$vehicle_make->name}}</td>
                            <td>{{$vehicle_make->code}}</td>
                            <td>
                                <a href="{{ route('vehicle_makes.edit',$vehicle_make->id)}}" class="btn btn-primary">Edit</a>
                                <a class="btn btn-info" href="{{ route('vehicle_makes.show',$vehicle_make->id) }}">Show</a>
                                <form action="{{ route('vehicle_makes.destroy', $vehicle_make->id)}}" method="post">
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