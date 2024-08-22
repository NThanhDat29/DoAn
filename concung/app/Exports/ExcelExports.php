<?php

namespace App\Exports;

use App\Models\Order;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExcelExports implements FromCollection, WithHeadings
{
    
    public function collection()
    {
        return Order::with('customer', 'status')->get();
    }

    public function headings(): array
    {
        return Order::getExportableFields();
    }

    public function map($order): array
    {
        return [
            $order->id,
            $order->customer->name, // Lấy tên khách hàng từ quan hệ customer
            $order->status->name, // Lấy tên trạng thái từ quan hệ status
            // Thêm các trường khác tại đây nếu cần
        ];
    }
}
