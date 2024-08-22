<section class="main-trademark">
  <div class="container">
    <h2 class="mb-5"><b>Thương hiệu</b></h2>
    <div class="slide-trademark" data-aos="fade-up">
      @foreach ($trademarks as $key => $trademark) 
      <div class="trademark">
        <form action="/product" role="search">
          <input type="hidden" name="trademark_id" value="{{ $trademark->id }}">
          <button  type="submit" class="text-center" style="background: none; border: none">
            <div class="w-100" style="display: flex; align-items: center; flex-direction: column">
              <div class="trademark-img">
                <img src="{{ $trademark->thumb }}" alt="{{ $trademark->name }}">
              </div>
              <p>{{ $trademark->name }}</p>
            </div>
          </button>
        </form>
      </div>
      @endforeach
    </div>
  </div>
</section>