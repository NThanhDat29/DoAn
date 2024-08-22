<?php

namespace App\Http\View\Composers;

use App\Models\Supplier;
use Illuminate\View\View;

class SupplierComposer
{
  protected $users;

  public function __construct()
  {
  }

  public function compose(View $view): void
  {
    $suppliers = Supplier::select('suppliers.*')->orderBy('id')->get();
    $view->with('suppliers',$suppliers);
  }
}
