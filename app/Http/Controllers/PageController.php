<?php
namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\Product;
use App\Contacts;

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
        //global $board;
        //dd($board);
        $contacts = Contacts::all();
        return view("contacts/equipe", [
            'contacts' => $contacts,
            'id' => $id
        ]);
    }

    public function contacts()
    {
        //global $board;
        //dd($board);
        $contacts = Contacts::all();
        //dd($contacts);
        // return view('contacts.equipe', [
        //     'contacts' => $board
        // ]);
        return view('contacts.equipe', ['contacts' => $contacts]);
    }

}

