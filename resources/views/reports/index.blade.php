<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Reports</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>


<div class="card">
    <div class="card-header"><strong>Reporte de cotizaciones emitidas</strong></div>
    <div class="card-body">
        <br />
        <form method="POST" action="{{ url('/report/quotation') }}" id="formulario" accept-charset="UTF-8" class="form-horizontal" enctype="multipart/form-data">
            {{ csrf_field() }}
            <input type="hidden" id="parametro" name="parametro" value="0">
                <div class="row">
                    <div class="form-group col-12 col-md-4">
                        <label>Fecha inicio *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="dateStart" id="dateStart" value="{{$date}}" required="">
                        </div>    
                    </div>
                    <div class="form-group col-12 col-md-4">
                        <label>Fecha fin *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="dateEnd" id="dateEnd" value="{{$date}}" required="">
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
                <button class="btn btn-success" type="button" id="btnGenerarCotizacionesEmitidas">Generar reporte</button>
                <button type="submit" class="btn btn-rounded btn-success btn-sm" id="generarCotizacionesEmitidas" style="display: none;"></button>
        </form>
    </div>
</div>


<div class="card">
    <div class="card-header"><strong>Reporte de pólizas emitidas</strong></div>
    <div class="card-body">
        <br />
        <form method="POST" action="{{ url('/report/policy') }}" id="formulario" accept-charset="UTF-8" class="form-horizontal" enctype="multipart/form-data">
            {{ csrf_field() }}
            <input type="hidden" id="parametro" name="parametro" value="0">
                <div class="row">
                    <div class="form-group col-12 col-md-4">
                        <label>Fecha inicio *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="dateStart" value="{{$date}}" required="">
                        </div>    
                    </div>
                    <div class="form-group col-12 col-md-4">
                        <label>Fecha fin *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="dateEnd" value="{{$date}}" required="">
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
                <button class="btn btn-success" type="button" id="btnGenerarPolizasEmitidas">Generar reporte</button>
                <button type="submit" class="btn btn-rounded btn-success btn-sm" id="generarPolizasEmitidas" style="display: none;"></button>
        </form>
    </div>
</div>




<div class="card">
    <div class="card-header"><strong>Reporte de cotizaciones sin confirmar</strong></div>
    <div class="card-body">
        <br />
        <form method="POST" action="{{ url('/report/quotation_unconfirmed') }}" id="formulario" accept-charset="UTF-8" class="form-horizontal" enctype="multipart/form-data">
            {{ csrf_field() }}
            <input type="hidden" id="parametro" name="parametro" value="0">
                <div class="row">
                    <div class="form-group col-12 col-md-4">
                        <label>Fecha inicio *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="dateStart" value="{{$date}}" required="">
                        </div>    
                    </div>
                    <div class="form-group col-12 col-md-4">
                        <label>Fecha fin *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="dateEnd" value="{{$date}}" required="">
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
                <button class="btn btn-success" type="button" id="btnGenerarCotizacionesSinConfirmar">Generar reporte</button>
                <button type="submit" class="btn btn-rounded btn-success btn-sm" id="generarCotizacionesSinConfirmar" style="display: none;"></button>
        </form>
    </div>
</div>


<div class="card">
    <div class="card-header"><strong>Reporte de pólizas vencidas</strong></div>
    <div class="card-body">
        <br />
        <form method="POST" action="{{ url('/report/policy_expire') }}" id="formulario" accept-charset="UTF-8" class="form-horizontal" enctype="multipart/form-data">
            {{ csrf_field() }}
            <input type="hidden" id="parametro" name="parametro" value="0">
                <div class="row">
                    <div class="form-group col-12 col-md-4">
                        <label>Fecha inicio *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="dateStart" value="{{$date}}" required="">
                        </div>    
                    </div>
                    <div class="form-group col-12 col-md-4">
                        <label>Fecha fin *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="dateEnd" value="{{$date}}" required="">
                        </div>    
                    </div>
                    <div class="form-group col-12 col-md-4">
                        <label>Concesionario</label>
                    	<select name="branchOfficeId" id="branchOfficeId"  class="form-control">
                    		<option value="">Ninguno</option>
                    		@foreach($branch_officies as $item)
                    		<option value="{{$item->id}}">{{$item->name}}</option>
                    		@endforeach
                    	</select>
                    </div>
                </div>
                <br>
                <button class="btn btn-success" type="button" id="btnGenerarPolizasVencidas">Generar reporte</button>
                <button type="submit" class="btn btn-rounded btn-success btn-sm" id="generarPolizasVencidas" style="display: none;"></button>
        </form>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>


<script type="text/javascript">
$(document).ready(function() {
    var btnGenerarCotizacionesEmitidas = document.getElementById("btnGenerarCotizacionesEmitidas");
    var btnGenerarPolizasEmitidas = document.getElementById("btnGenerarPolizasEmitidas");
    var btnGenerarCotizacionesSinConfirmar = document.getElementById("btnGenerarCotizacionesSinConfirmar");
    var btnGenerarPolizasVencidas = document.getElementById("btnGenerarPolizasVencidas");

    $( "input[name='dateStart']" ).datepicker({ dateFormat: 'yy-mm-dd' });
    $( "input[name='dateEnd']" ).datepicker({ dateFormat: 'yy-mm-dd' });
   

    btnGenerarCotizacionesEmitidas.onclick = function (e) {
        var generarCotizacionesEmitidas = document.getElementById("generarCotizacionesEmitidas");
       e.preventDefault();
       generarCotizacionesEmitidas.dispatchEvent(new MouseEvent("click", {ctrlKey: true}));
    };
    btnGenerarPolizasEmitidas.onclick = function (e) {
        var generarPolizasEmitidas = document.getElementById("generarPolizasEmitidas");
       e.preventDefault();
       generarPolizasEmitidas.dispatchEvent(new MouseEvent("click", {ctrlKey: true}));
    };

    btnGenerarCotizacionesSinConfirmar.onclick = function (e) {
        var generarCotizacionesSinConfirmar = document.getElementById("generarCotizacionesSinConfirmar");
       e.preventDefault();
       generarCotizacionesSinConfirmar.dispatchEvent(new MouseEvent("click", {ctrlKey: true}));
    };

    btnGenerarPolizasVencidas.onclick = function (e) {
        var generarPolizasVencidas = document.getElementById("generarPolizasVencidas");
       e.preventDefault();
       generarPolizasVencidas.dispatchEvent(new MouseEvent("click", {ctrlKey: true}));
    };




   
});
</script>     


</body>
</html>