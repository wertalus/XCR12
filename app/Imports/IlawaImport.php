<?php

namespace App\Imports;

use App\Models\Ilawa;
use Maatwebsite\Excel\Concerns\ToModel;
Use Maatwebsite\Excel\Concerns\WithStartRow;


class IlawaImport implements ToModel, WithStartRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */

    public function startRow(): int
    {
        return 2;
    }

    public function __construct($weekNo)
    {
        $this->weekNo = $weekNo;
    }

    public function model(array $row)
    {
        return new Ilawa([
            'model_name' => $row[0],
            'quantity' => $row[1],
            'status' => $row[2],
            'week_number' => $this->weekNo,     
        ]);
    }
}
