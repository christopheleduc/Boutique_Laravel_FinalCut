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

    public function contact($contact)
    {
        //global $board;
        //dd($contact);
        $contacts = Contacts::wherefirstname($contact)->get();
        //dd($contacts);
        return view('contacts.contact', ['contact' => $contacts]);
        // $contacts = Contacts::all();
        // return view("contacts.contact", [
        //     'contacts' => $contacts,
        //     'id' => $contact
        // ]);
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

