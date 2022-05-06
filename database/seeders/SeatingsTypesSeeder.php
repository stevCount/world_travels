<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Seeder;

class SeatingsTypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $seatTypes = ["normal","vip","WT"];

        foreach ($seatTypes as $value) {
            DB::table('seating_types')->insert([
                'name' => $value,
                'state' => 1
            ]);
        }
    }
}
