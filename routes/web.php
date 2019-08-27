<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
 // ********************   ADMIN   ********************** //

Route::group(['prefix'=>'admin', 'middleware' => 'admin'], function ()
{
    Route::get('/', 'AdminController@index');
    Route::post('/', 'AdminController@store');
    // Route::get('/{id}', 'AdminController@create');
    Route::get('/create', 'AdminController@create');
    Route::resource('/product', 'AdminController');

    Route::get('/orders', 'BasketController@admin')->name('orders');

//* Routes Category !!! Fini: Ne surtout pas effacer !!! *//
    Route::get('/category', 'CategoryController@index');
    // Route::get('/category/edit', 'CategoryController@edit');
    // Route::post('/category', 'CategoryController@index');
    Route::post('/', 'CategoryController@store');
    Route::resource('/category', 'CategoryController');
//********************* Routes Promo *********************//
    Route::get('/promo', 'promoController@index' );
    Route::post('/promo', 'promoController@store');
    Route::resource('/promo', 'promoController');

});


// ********************   Utilisateur   ********************** //

// Acceuil

Route::get('/', 'PageController@index');

// Produits

Route::get('/products', 'ProductController@index')->name('products');
Route::get('/product/{id}', 'ProductController@show');

// Panier

Route::get('orders/basket', 'BasketController@index');
Route::post('/', 'BasketController@addProduct');
Route::post('/destroy', 'BasketController@destroy');
Route::post('/validate', 'BasketController@store');

// Commandes

Route::get('orders/commandes', 'BasketController@show_com');

//Historique

//Route::get('orders/basketstory', 'BasketController@index');
Route::get('/historique', 'BasketController@show_story')->name('historique')->middleware('auth');
Route::get('/historique/{order}', 'BasketController@story_details')->middleware('auth');

/* Contacts !!! a finir !!! */
//Route::get('/contacts', 'PageController@contacts');
//Route::get('/contacts/{id}', 'PageController@contact');
Route::get('contacts/equipe', 'PageController@contacts')->name('equipe');
Route::get('contacts/{contact}', 'PageController@contact')->name('contacts');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

/* Suppliers API route */
Route::get('/suppliers', 'ApiController@suppliers')->name('suppliers');
