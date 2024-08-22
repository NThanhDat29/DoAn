<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::table('products', function (Blueprint $table) {
        $table->unsignedBigInteger('supplier_id')->nullable(); // Thêm cột 'supplier_id' với kiểu dữ liệu unsigned big integer và cho phép giá trị null
        $table->foreign('supplier_id')->references('id')->on('suppliers'); // Thêm foreign key liên kết cột 'supplier_id' với cột 'id' của bảng 'suppliers'
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('products', function (Blueprint $table) {
            //
        });
    }
};
