<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFlightsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flights', function (Blueprint $table) {
            $table->id();
            $table->string("flight_name",100);
            $table->unsignedBigInteger('flight_type');
            $table->unsignedBigInteger('state');
            $table->unsignedBigInteger('start_airport')->index();
            $table->unsignedBigInteger('destination_airport')->index();
            $table->foreign('flight_type')->references('id')->on('flights_types');
            $table->foreign('state')->references('id')->on('states');
            $table->foreign('start_airport')->references('id')->on('airports');
            $table->foreign('destination_airport')->references('id')->on('airports');
            $table->date("start_flights_date");
            $table->date("limit_flights_date");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('flights');
        Schema::enableForeignKeyConstraints();
    }
}
