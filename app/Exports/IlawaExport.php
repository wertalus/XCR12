<?php

namespace App\Exports;

use App\Models\Ilawa;
use Maatwebsite\Excel\Concerns\FromCollection;

class IlawaExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Ilawa::all();
    }
}
