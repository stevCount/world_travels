<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Seeder;

class CountriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $locationUrlFile = realpath(__DIR__ . '../../../public/assets/json/countries.json');
        
        $jsonCountriesLocation = file_get_contents($locationUrlFile);
        $data = json_decode($jsonCountriesLocation, true);

        $countries = $data["countries"];

        foreach ($countries as $value) {
            DB::table('countries')->insert([
                'country' => $value["country"],
                'region_id' => $value["region_id"],
            ]);
        }
    }
}
