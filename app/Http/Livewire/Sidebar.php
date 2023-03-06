<?php

namespace App\Http\Livewire;

use Livewire\Component;



class Sidebar extends Component
{

    public $active;

    public function render()
    {
        $active1 ='active';
        $active2='';

        return view('livewire.sidebar');
    }
}
