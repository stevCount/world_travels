<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatesTypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $statesTypes = ["usuarios","vuelos","reservas","tipos_asientos","aeropuertos"];

        foreach ($statesTypes as $value) {
            DB::table('states_types')->insert([
                'type_state' => $value,
            ]);
        }
    }
}
