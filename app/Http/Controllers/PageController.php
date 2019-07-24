<?php
namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\Product;
require 'catalogue.php';

class PageController extends Controller
{
    public function index()
    {
        $Products = Product::all();
        return view('welcome', ['Products' => $Products]);
    }

    public function contact($id)
    {
        global $board;
        //dd($board);
        return view("contacts/equipe", [
            'contacts' => $board,
            'id' => $id
        ]);
    }

    public function contacts()
    {
        global $board;
        //dd($board);
        return view('contacts.equipe', [
            'contacts' => $board
        ]);
    }

}

