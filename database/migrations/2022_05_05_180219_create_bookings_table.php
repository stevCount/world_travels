<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bookings', function (Blueprint $table) {
            $table->id();
            $table->string("seat_name",60);
            $table->unsignedBigInteger('flight_id');
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('state');
            $table->unsignedBigInteger('seat_type');
            $table->foreign('flight_id')->references('id')->on('flights');
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('state')->references('id')->on('states');
            $table->foreign('seat_type')->references('id')->on('seating_types');
            $table->dateTime("booking_date");
            $table->tinyInteger("is_paid");
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
        Schema::dropIfExists('bookings');
        Schema::enableForeignKeyConstraints();
    }
}
