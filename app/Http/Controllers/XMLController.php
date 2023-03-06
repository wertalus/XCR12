<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class XMLController extends Controller
{
    public function readXML(Request $request)

    {

        $request->validate([

            'file' => 'required|mimes:xml'

        ]);

        $file = $request->file;

        //$xmlString = file_get_contents(public_path($file));

        $xmlObject = simplexml_load_file($file);           

        $json = json_encode($xmlObject);

        $phpArray = json_decode($json, true); 

        foreach ($phpArray['Models']['Model'] as $item)
        {
            dump($item['@attributes']['Name']);
        }
         
            //dd($phpArray['Models']['Model'][0]['@attributes']['Name'] );
        
       // return redirect('/upload-plan')->with('success', 'Plik załadowano poprawnie.');
    }
}
