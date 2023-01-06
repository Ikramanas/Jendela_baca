@if (Session::has('success'))
<div class="alert alert-success alert-dismissible" role="alert">
        <i class="bi bi-check-circle me-1"></i>
    <strong> Sucsess.. !</strong> {{ session('success') }}
</div>
@endif


@if (Session::has('error'))
<div class="alert alert-danger alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert">
        <i class="bi bi-exclamation-octagon me-1"></i>
    </button>
    <strong>Error !</strong> {{ session('error') }}
</div>
@endif
{{-- 
<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <i class="bi bi-exclamation-octagon me-1"></i>
    A simple danger alert with icon—check it out!
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
 --}}
