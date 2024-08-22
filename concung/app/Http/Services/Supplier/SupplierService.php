<?php

namespace App\HTTP\Services\Supplier;

use App\Models\Supplier;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class SupplierService
{
  public function get(){
    return Supplier::orderbyDesc('id')->paginate(5);
  }

  public function create($request)
  {
    try {
        Supplier::create([
        'name' => (string) $request->input('name'),
        'thumb' => (string) $request->input('thumb'),
        'url' => (string) $request->input('url'),
      ]);

      Session::flash('success', 'Tạo nhà cung cấp thành công');

    } catch (\Exception $err) {
      Session::flash('error', $err->getMessage());
      return false;
    }

    return true;
  }

  public function update($request, $supplier) : bool{
    $supplier->name = (string) $request->input('name');
    $supplier->thumb = (string) $request->input('thumb');
    $supplier->url = (string) $request->input('url');
    $supplier->save();

    Session::flash('success', 'Cập nhật nhà cung cấp thành công');
    return true;
  }

  public function destroy($request){
    $id = (int) $request->input('id');
    $supplier = Supplier::where('id', $id)->first();
    if($supplier){
      return Supplier::where('id', $id)->delete();
    }

    return false;
  }
}
