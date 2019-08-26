<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateApiSuppliersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('api_suppliers', function (Blueprint $table) {
            $table->bigIncrements('id')->unsigned();
            $table->string('name');
            $table->dateTimeTz('checkedAt')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->boolean('status');
            $table->float('latitude', 9, 4);
            $table->float('longitude', 9, 4);
            $table->timestampsTz();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('suppliers_api');
    }
}
