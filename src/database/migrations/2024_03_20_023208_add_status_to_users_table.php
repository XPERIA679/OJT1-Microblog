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
        Schema::table('users', function (Blueprint $table) {
            $table->renameColumn('name', 'username', '255');
            $table->after('email', function ($table) {
                $table->integer('status')->comment('0-not verified 1-active 3-deactivated');
            });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->renameColumn('name', 'username', '255');
            $table->after('email', function ($table) {
                $table->integer('status')->comment('0-not verified 1-active 3-deactivated');
            });
        });
    }
};
