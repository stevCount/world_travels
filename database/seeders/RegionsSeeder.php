<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class RegionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $regions = ["Asia","Asia del Oeste y Africa del Norte","Africa","Europa y Asia Central","Europa","América del Norte y Oceanía","América Latina y el Caribe"];

        foreach ($regions as $value) {
            DB::table('regions')->insert([
                'region' => $value,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            ]);
        }
    }
}
