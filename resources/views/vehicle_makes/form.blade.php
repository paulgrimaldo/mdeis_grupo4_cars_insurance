<form method="post" action="{{ route('vehicle_makes.update',$vehicle_make->id) }}">
    @csrf
    @method('PUT')
    <div class="form-group">    
        <label for="first_name">Nombre:</label>
        <input type="text" class="form-control" name="name" value="{{ $vehicle_make->name }}"/>
    </div>

    <div class="form-group">
        <label for="last_name">Código:</label>
        <input type="text" class="form-control" name="code" value="{{ $vehicle_make->code }}"/>
    </div>
                      
    <button type="submit" class="btn btn-primary-outline">Add contact</button>
</form>