<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('egresses', function (Blueprint $table) {
            $table->id();
            $table->string('description');
            $table->string('type');
            $table->date('date');
            $table->double('value');
            $table->string('url')->nullable();
            $table->unsignedBigInteger('weekly_reports_id');
            $table->foreign('weekly_reports_id')->references('id')->on('weekly_reports')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('egresses');
    }
};
