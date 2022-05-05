<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('first_names',60);
            $table->string('last_names',60)->nullable();
            $table->string('email',80)->nullable();
            $table->string('mobile_number',80)->nullable();
            $table->string('password',100)->nullable();
            $table->date("birth_date")->nullable();
            $table->integer("age")->nullable();
            $table->unsignedBigInteger('state')->nullable();
            $table->unsignedBigInteger('role')->nullable();
            $table->foreign('state')->references('id')->on('states');
            $table->foreign('role')->references('id')->on('roles');
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
        Schema::dropIfExists('users');
        Schema::enableForeignKeyConstraints();
    }
}
