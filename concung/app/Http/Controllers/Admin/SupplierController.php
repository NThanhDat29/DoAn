<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Supplier\SupplierRequest;
use App\HTTP\Services\Supplier\SupplierService;
use App\Models\Supplier;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
  protected $supplierService;
  /**
   * Display a listing of the resource.
   */
  public function __construct(SupplierService $supplierService)
  {
    $this->supplierService = $supplierService;
  }

  public function index(Request $request)
  {
    $search = $request->get('search');
    $suppliers = Supplier::when($search, function ($query, $search) {
      $query->where('name', 'like', '%' . $search . '%');
    })
      ->orderBy('id', 'desc')
      ->paginate(5);
    $suppliers->appends(['search' => $search]);
    return view('admin.supplier.list', [
      'title' => 'Danh Sách nhà cung cấp',
      'suppliers' => $suppliers
    ]);
  }
  public function search(Request $request)
  {
    $search = $request->get('query');
    $suppliers = Supplier::where('name', 'like', '%' . $search . '%')
      ->orderBy('id', 'desc')
      ->get()
      ->pluck('name');

    return response()->json($suppliers);
  }

  /**
   * Show the form for creating a new resource.
   */
  public function create()
  {
    return view('admin.supplier.add', [
      'title' => 'Thêm nhà cung cấp mới',
    ]);
  }

  /**
   * Store a newly created resource in storage.
   */
  public function store(SupplierRequest $request)
  {
    $this->supplierService->create($request);

    return redirect()->back();
  }

  /**
   * Display the specified resource.
   */
  public function show(Supplier $supplier)
  {
    return view('admin.supplier.edit', [
      'title' => 'Chỉnh Sửa nhà cung cấp: ' . $supplier->name,
      'supplier' => $supplier,
    ]);
  }

  /**
   * Show the form for editing the specified resource.
   */
  public function edit(string $id)
  {
    //
  }

  /**
   * Update the specified resource in storage.
   */
  public function update(Supplier $trademark, SupplierRequest $request)
  {
    $this->supplierService->update($request, $trademark);

    return redirect('/admin/suppliers/list');
  }

  /**
   * Remove the specified resource from storage.
   */
  public function destroy(Request $request): JsonResponse
  {
    $result = $this->supplierService->destroy($request);
    if ($result) {
      return response()->json([
        'error' => false,
        'message' => 'Xóa thành công nhà cung cấp'
      ]);
    }

    return response()->json([
      'error' => true
    ]);
  }
}
