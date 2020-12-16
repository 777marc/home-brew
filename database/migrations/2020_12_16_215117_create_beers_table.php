<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBeersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('beers', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->date('brew_date')->nullable();
            $table->date('bottle_date')->nullable();
            $table->date('cold_condition_date')->nullable();
            $table->date('ready_date')->nullable();
            $table->integer('age_in_days')->nullable();
            $table->string('color', 50)->nullable();
            $table->string('bottle_type', 100)->nullable();
            $table->string('fermenter_type', 100)->nullable();
            $table->float('quantity', 8, 2)->nullable();
            $table->string('vendor', 255)->nullable();
            $table->float('intial_gravity', 8, 4)->nullable();
            $table->float('final_gravity', 8, 4)->nullable();
            $table->text('notes')->nullable();
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
        Schema::dropIfExists('beers');
    }
}
