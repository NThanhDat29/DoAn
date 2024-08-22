<?php

namespace App\Helpers\Supplier;

use Illuminate\Support\Str;

class SupplierHelper
{
  public static function supplier($suppliers)
  {
    // Định nghĩa số sản phẩm trên mỗi trang
    $perPage = 5;
    // Lấy trang hiện tại từ request (mặc định là trang 1)
    $currentPage = request()->input('page', 1);
    // Tính toán giá trị bắt đầu của số thứ tự (startStt)
    $startStt = ($currentPage - 1) * $perPage + 1;
    $html = '';
    foreach ($suppliers as $key => $supplier) {
      $stt = $startStt + $key;
      $html .= '
        <tr>
          <td>' . $stt . '</td>
          <td>' . $supplier->name . '</td>
          <td><img src="' . $supplier->thumb . '" width=80px alt="' . $supplier->name . '"></td>
          <td>' . date('d-m-Y H:i:s', strtotime($supplier->updated_at)) . '</td>
          <td>
            <a href="/admin/suppliers/edit/id=' . $supplier->id . '" class="btn btn-primary btn-sm">
              <i class="fa-regular fa-pen-to-square"></i>
            </a>
            <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#Modal' . $supplier->id . '">
              <i class="fa-regular fa-trash"></i>
            </button>

            <!-- Modal -->
            <div class="modal fade" id="Modal' . $supplier->id . '" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa nhà cung cấp</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    Bạn có chắc xóa nhà cung cấp <b>' . $supplier->name . '</b> không ?
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="removeRow(' . $supplier->id . ',\'/admin/suppliers/destroy\')">Xóa</button>
                  </div>
                </div>
              </div>
            </div>
          </td>
        </tr>
        ';

      unset($suppliers[$key]);
    }

    return $html;
  }
}
