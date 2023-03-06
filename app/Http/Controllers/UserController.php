<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class UserController extends Controller
{

    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {

        return view('main');
    }

    public function uploadPlan() {

        return view('upload-plan');
    }

    public function dashboard() {

        return view('dashboard');
    }

    public function dashboardAndrychow() {

        return view('andrychow');
    }
}
