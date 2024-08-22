<section class="main-supplier">
    <div class="container">
      <h2 class="mb-5"><b>Nhà cung cấp</b></h2>
      <div class="slide-supplier" data-aos="fade-up">
        @foreach ($suppliers as $key => $supplier) 
        <div class="supplier">
          <form action="/product" role="search">
            <input type="hidden" name="supplier_id" value="{{ $supplier->id }}">
            <button  type="submit" class="text-center" style="background: none; border: none">
              <div class="w-100" style="display: flex; align-items: center; flex-direction: column">
                <div class="supplier-img">
                  <img src="{{ $supplier->thumb }}" alt="{{ $supplier->name }}">
                </div>
                <p>{{ $supplier->name }}</p>
              </div>
            </button>
          </form>
        </div>
        @endforeach
      </div>
    </div>
  </section>