<?php

namespace App\Http\Controllers;

use App\Suppliers_api;

class ApiController extends Controller
{
    public function suppliers()
    {
        return Suppliers_api::get();
    }

}
