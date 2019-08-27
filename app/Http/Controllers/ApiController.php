<?php

namespace App\Http\Controllers;

use App\ApiSupplier;

class ApiController extends Controller
{
    public function suppliers()
    {
        return ApiSupplier::get();
    }

}
