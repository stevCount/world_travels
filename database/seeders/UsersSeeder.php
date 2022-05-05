<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        DB::table('users')->insert([
            'first_names' => $faker->firstName(),
            'last_names' => $faker->lastName(),
            'email' => $faker->safeEmail,
            "mobile_number" => $faker->phoneNumber,
            "age" => $faker->numberBetween(25, 50),
            "birth_date" => $faker->date(),
            'password' => Hash::make('abc1234'),
            'state' => 1,
            'role' => 1,
        ]);
    }
}
