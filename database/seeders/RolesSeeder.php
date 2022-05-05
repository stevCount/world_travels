<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = ["usuario", "administrador"];
        
        foreach ($roles as $value) {
            DB::table('roles')->insert([
                'role' => $value,
            ]);
        }
    }
}
