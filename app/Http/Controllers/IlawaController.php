<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Excel;
use App\Imports\IlawaImport;



class IlawaController extends Controller
{
    public function import() 
    {
        Excel::import(new IlawaImport, 'users.xlsx');
        
        return redirect('/')->with('success', 'All good!');
    }

    public function store(Request $request)
    {
        $request->validate([

            'file' => 'required|mimes:xlsx, csv, xls',
            'weekNumber' => 'integer|between:1,52|required'

        ]);

        $weekNo = $request ->weekNumber;

        $file = $request->file;

        Excel::import(new IlawaImport($weekNo), $file);
        
        return redirect('/upload-plan')->with('success', 'Plik załadowano poprawnie.');
    }

    public function export() 
    {
        $file = $request->file;
        return Excel::download(new UsersExport, $file);
    }

    public function load(Request $request)
    {
        $file = $request->file;
        $this->validate($request, [

            'file' => 'required|mimes:xlsx, csv, xls'

        ]);

        $data = Excel::load($file)->get();

        if($data->count() > 0)
        {
            foreach($data->toArray() as $key => $value)
            {
                foreach($value as $row)
                {
                    $insert_data[] =array(
                        'Model_Name' => $row[0],
                        'Qauntity' => $row[1]

                    );
                }
            }
            return back->with('success','Udało się!',['data'=>$data]);
        }
            
    }
}
