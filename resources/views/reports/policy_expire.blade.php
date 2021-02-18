
<html>
<title>Policy Expire</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="{{ public_path('css/w3.css') }}">
<link rel="icon" href="{{public_path('images/logo.ico')}}">

<style>
    @page { margin: 100px 40px; }
    header { position: fixed; top: -100px; left: 0px; right: 0px;  height: 10px; }
    footer { position: fixed; bottom: -60px; left: 0px; right: 0px;  height: 50px; }
    table {
        border-collapse: collapse;
        width: 100%;
        padding-left: 0%;
        border: 1px solid #e0e0e0;
    }
    p.saltodepagina
    {
        page-break-after: always;
    }

    td {
        padding: 7px;
        text-align: left;
    }
    tr:nth-child(even) {background-color: #f2f2f2;}
    th {
        background-color: #aaaaaa;
        color: white;
        text-align: center;
        padding: 7px;
    }
    body {
        font-family:Helvetica,Futura,Arial,Verdana,sans-serif;
    }
</style>
<body>

<div class="w3-container">

    <header>
        <div class="w3-row" style="margin-top: 1em;">
          <div class="w3-half" style="text-align: left;">
            <img src="{{public_path('images/logo.png')}}" style="height: 50px;width: auto;margin-left: 1em;"> 
          </div>
          <div class="w3-half" style="text-align: right;">
            <p style="font-size: 10px;margin-top: 3em;margin-left: 1em;vertical-align:middle;">Reporte generado:{{\Carbon\Carbon::now()}}</p>
          </div>
        </div>
    </header>
    
    <div style="width: 100%; text-align: center;">
        <div class="w3-container">
            <strong style="font-size: 17px;color: #006FA4;">Reporte de pólizas vencidas</strong>
        </div>
        <p style="font-size: 12px;margin-top: 1em;">Pólizas vencidas desde <strong>{{$dateStart}}</strong> hasta el <strong>{{$dateEnd}}</strong></p>
    </div>


    <table class="w3-table-all w3-centered"  style="font-size:12px;margin-top: 2em; " >
    <tr>

        <th scope="col">#</th>
        <th>Fecha</th>
        <th>Cliente</th>
        <th>Placa</th>
        <th>Modelo</th>
        <th>Tipo Vehiculo</th>
        <th>Concesionario</th>
        <th>Vigencia</th>

 
    </tr>
        @foreach($data as $item)
            <tr>
            
            <td scope="row" >{{ $loop->iteration }}</td>
            <td>{{ $item->policy_effective_date }}</td>
            <td>{{ $item->driver->first_name }} {{ $item->driver->last_name }}</td>
            <td>{{ $item->vehicle->license_plate }}</td>
            <td>{{ $item->vehicle->vehicle_make->vehicle_model->name }}</td>
            <td>{{ $item->vehicle->vehicle_make->vehicle_model->vehicle_type->name }}</td>
            <td>{{ $item->branch_office->name }}</td>
            <td>{{ $item->date_start }} - {{ $item->date_end }}</td>
                    
            </tr>
        @endforeach
           
    </table>


    <footer>
        <div class="w3-row" style="margin-top: 1em;text-align: left;">
            <p style="font-size: 10px;margin-left: 1em;vertical-align:middle;color: #888888;">
                <strong>"AUTO SEGURO"</strong> </p>
        </div>
    </footer>


</div>

</body>
</html>
