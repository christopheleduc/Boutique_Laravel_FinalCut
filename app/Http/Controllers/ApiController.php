<?php

namespace App\Http\Controllers;

use App\ApiSupplier;

class ApiController extends Controller
{
    public function suppliers()
    {
        return ApiSupplier::get();
    }

    public function suppliers_json()
    {
        $JsonSuppliers = ApiSupplier::get();

        $data = [
            'title' => 'Laravel Suppliers API',
            'home_page_url' => 'https://boutique',
            'feed_url' => 'https://boutique/suppliers/json',
            'items' => [],
        ];

        foreach ($JsonSuppliers as $key => $JsonSupplier) {
            $data['items'][$key] = [
                'id' => $JsonSupplier->id,
                'name' => $JsonSupplier->name,
                'checkedAt' => $JsonSupplier->checkedAt,
                'status' => boolval($JsonSupplier->status),
                'latitude' => $JsonSupplier->latitude,
                'longitude' => $JsonSupplier->longitude,
                'date_published' => $JsonSupplier->created_at->tz('UTC')->toRfc3339String(),
                'date_modified' => $JsonSupplier->updated_at->tz('UTC')->toRfc3339String(),
            ];
        }

        return $data;
    }

}
