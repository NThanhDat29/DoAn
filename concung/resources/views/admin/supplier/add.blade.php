@extends('admin.main')

@section('content')
<form action="" method="post">
  <div class="card-body">

    <div class="row">
      <div class="form-group col-md-6">
        <label for="name">Tên nhà cung cấp</label>
        <input type="text" class="form-control" name="name" placeholder="Nhập tên nhà cung cấp">
      </div>
      <div class="form-group col-md-6">
        <label>Đường đẫn</label>
        <input type="text" class="form-control" name="url" placeholder="Nhập đường dẫn">
      </div>
    </div>
    <div class="form-group">
      <label>Ảnh sản phẩm</label>
      <input type="file" class="form-control" id="upload">
      <div id="image_show" class="mt-3"></div>
      <input type="hidden" name="thumb" id="thumb">
    </div>
  </div>
  <!-- /.card-body -->

  <div class="card-footer">
    <button type="submit" class="btn btn-success">Tạo nhà cung cấp</button>
    <a href="/admin/suppliers/list" class="btn btn-secondary">Quay lại</a>
  </div>
  @csrf
</form>
@endsection
