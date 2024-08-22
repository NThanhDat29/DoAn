<?php

namespace App\Http\Requests\Supplier;

use Illuminate\Foundation\Http\FormRequest;

class SupplierRequest extends FormRequest
{
  /**
   * Determine if the user is authorized to make this request.
   */
  public function authorize(): bool
  {
    return true;
  }

  /**
   * Get the validation rules that apply to the request.
   *
   * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
   */
  public function rules(): array
  {
    return [
      'name' => 'required',
      'thumb' => 'required',
    ];
  }

  public function messages()
  {
    return [
      'name.required' => 'Vui lòng nhập tên nhà cung cấp',
      'thumb.required' => 'Vui lòng nhập ảnh nhà cung cấp',
      // 'thumb.image' => 'Vui lòng nhập nhập đúng định dạng hình ảnh',
    ];
  }
}
