<?php

use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        DB::table('api_suppliers')->insert([
            [
                'id'        => 1,
                'name'      => "Monica_Satterfield",
                'status'    => false,
                'latitude'  => "50.2257",
                'longitude' => "170.5542"
            ],
            [
                'id'        => 2,
                'name'      => "Shayne.Cummerata",
                'status'    => false,
                'latitude'  => "-62.2381",
                'longitude' => "-130.5333"
            ],
            [
                'id'        => 3,
                'name'      => "Wendell_Gusikowski64",
                'status'    => false,
                'latitude'  => "16.9088",
                'longitude' => "33.2389"
            ],
            [
                'id'        => 4,
                'name'      => "Frank44",
                'status'    => false,
                'latitude'  => "50.8967",
                'longitude' => "-165.1583"
            ],
            [
                'id'        => 5,
                'name'      => "Devin60",
                'status'    => true,
                'latitude'  => "32.0716",
                'longitude' => "-75.7375"
            ],
            [
                'id'        => 6,
                'name'      => "Rick_Mueller6",
                'status'    => false,
                'latitude'  => "39.1226",
                'longitude' => "-37.0041"
            ],
            [
                'id'        => 7,
                'name'      => "Kimberly_Braun",
                'status'    => false,
                'latitude'  => "-80.7349",
                'longitude' => "6.4900"
            ],
            [
                'id'        => 8,
                'name'      => "Angel_Stroman",
                'status'    => false,
                'latitude'  => "-87.0271",
                'longitude' => "162.8048"
            ],
            [
                'id'        => 9,
                'name'      => "Xander_Hammes",
                'status'    => false,
                'latitude'  => "-76.9160",
                'longitude' => "-115.6229"
            ],
            [
                'id'        => 10,
                'name'      => "Jevon_Reinger",
                'status'    => true,
                'latitude'  => "42.6313",
                'longitude' => "-130.5931"
            ],
            [
                'id'        => 11,
                'name'      => "Myles49Davies",
                'status'    => true,
                'latitude'  => "14.7380",
                'longitude' => "-157.6766"
            ],
            [
                'id'        => 12,
                'name'      => "Narciso84",
                'status'    => false,
                'latitude'  => "-12.6340",
                'longitude' => "-125.5771"
            ],
            [
                'id'        => 13,
                'name'      => "Rosella.Kilback22",
                'status'    => false,
                'latitude'  => "37.8824",
                'longitude' => "38.4061"
            ],
            [
                'id'        => 14,
                'name'      => "Sammie46",
                'status'    => false,
                'latitude'  => "-9.0155",
                'longitude' => "34.6593"
            ],
            [
                'id'        => 15,
                'name'      => "Selena.Schulist67",
                'status'    => true,
                'latitude'  => "-81.2406",
                'longitude' => "130.6475"
            ],
            [
                'id'        => 16,
                'name'      => "Gabriel_Auer68",
                'status'    => true,
                'latitude'  => "75.6639",
                'longitude' => "60.8417"
            ],
            [
                'id'        => 17,
                'name'      => "Constantin48",
                'status'    => true,
                'latitude'  => "79.0579",
                'longitude' => "-25.4273"
            ],
        ]);
    }
}
