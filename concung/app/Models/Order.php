<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
class Order extends Model
{
    protected $fillable = [
        'customer_id',
        'status_id',
        'userset_id',
        'user_id',
    ];

    // Danh sách các trường để xuất ra Excel
    protected $exportable = [
        'id',
        'customer_name', // Tên khách hàng
        'status_name', // Tên trạng thái
        // Thêm các trường khác tại đây nếu cần
    ];

    public function sale()
    {
        return $this->belongsTo(Sale::class);
    }

    public function userSet()
    {
        return $this->belongsTo(User::class, 'userset_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id');
    }

    public function status()
    {
        return $this->belongsTo(Status::class, 'status_id');
    }

    public function orderdetails()
    {
        return $this->hasMany(Orderdetail::class);
    }

    /**
     * Lấy danh sách các trường exportable
     *
     * @return array
     */
    public static function getExportableFields()
    {
        return (new self())->exportable;
    }
}
