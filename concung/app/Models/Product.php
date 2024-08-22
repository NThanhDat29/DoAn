<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
  use HasFactory;
  protected $fillable = [
    'name',
    'description',
    'content',
    'producttype_id',
    'trademark_id',
    'supplier_id',
    'promotion_id',
    'thumb',
    'quantity',
    'price',
  ];

  public function scopeSearch($query){
    if(request('key')){
      $key= request('key');
      $query = $query->where('name','like','%'.$key.'%');
    }
    return $query;
  }
  public function promotion()
  {
    return $this->belongsTo(Promotion::class);
  }
  public function trademark()
  {
    return $this->belongsTo(Trademark::class);
  }
  public function supplier()
  {
    return $this->belongsTo(Supplier::class);
  }
  public function producttype()
  {
    return $this->belongsTo(ProductType::class);
  }
  public function orderdetails()
  {
    return $this->hasMany(Orderdetail::class);
  }
  // Add relationships to Milk and Clothes
  public function milk()
  {
      return $this->hasOne(Milk::class);
  }

  public function clothes()
  {
      return $this->hasOne(Clothes::class);
  }
}
