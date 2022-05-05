<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $states = ["Activo","Inactivo"];
        
        foreach ($states as $value) {
            DB::table('states')->insert([
                'state' => $value,
                'state_type_id' => 1,
            ]);
        }
    }
}
