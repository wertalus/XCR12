<?php

namespace App\Http\Livewire;

use Livewire\Component;
use DB;
class UploadFile extends Component
{

    public $file_type='xls';
    public $import_type='upload-plan.import';

    public function render()
    {       
        $data = DB::table('ilawa')->get();

        return view('livewire.upload-file', ['data'=>$data]);
    }
}
