<div class="container mb-3">
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @else
        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
    @endif
    <h4 class="fw-bold mb-3">Wczytywanie planów.</h4>
    <hr>

    
    <form method="POST" action="{{route($import_type)}}" enctype="multipart/form-data">
        @csrf
            <div class=" mb-3 row">
                <div class="col-auto align-self-start">
                    <input type="radio" wire:click="$set('import_type','upload-plan.import')" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
                    <label class="btn btn-outline-primary " for="btnradio1">XLS - plan z Excel-a</label>
                </div>
        
                <div class="col-auto align-self-start">
                    <input type="radio" wire:click="$set('import_type','readXML.import')" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
                    <label class="btn btn-outline-primary" for="btnradio2">XML - plan z XML-a</label>
                </div>
                <div class="col-4 align-self-start">
                    <input type="text" class="form-control" name="weekNumber" id="formGroupExampleInput" placeholder="Podaj numer tygodnia dla którego jest plan">
                </div>
            </div>         
            <div class="input-group">
                <input type="file" class="form-control" name="file" id="formFile" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                <button class="btn btn-outline-secondary" type="submit" id="inputGroupFileAddon04">Wczytaj dane z pliku</button>
            </div>
    </form>

    <table class="table">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Nazwa modelu</th>
            <th scope="col">Ilość</th>
            <th scope="col">Status</th>
            <th scope="col">KW</th>
          </tr>
        </thead>
        
            @foreach($data as $row) 
            <tr>
                <td>{{$row->id}}</td>
                <td>{{$row->model_name}}</td>
                <td>{{$row->quantity}}</td>
                <td>{{$row->status}}
                <td>{{$row->week_number}}</td>
            </tr>
            @endforeach
        
        <tbody>
          <tr>
          </tr>
        </tbody>
      </table>
  </div>
