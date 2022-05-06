<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FlightsTypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $fligthsTypes = ["ida","ida y vuelta","vip","privados"];

        foreach ($fligthsTypes as $value) {
            DB::table('flights_types')->insert([
                'name' => $value
            ]);
        }
    }
}
