@extends('admin.layouts.master')
@section('content')

<div class="pagetitle">
        <h1>{{$title}}</h1> 
        <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href={{route('home.index')}}>Home</a></li>
            <li class="breadcrumb-item"><a href={{route('post.index')}}>All data</a></li>
            <li class="breadcrumb-item active">{{$title}}</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    {{-- {{dd($category)}}  --}}
  
    <section class="section">
        <div class="row">
          <div class="col-lg-12">
  
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Input Data</h5>
                    <!-- General Form Elements -->

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action={{route('post.store')}} method="POST" enctype="multipart/form-data">
                      @csrf
                      {{-- @method('POST') --}}
                        <div class="row mb-3">
                            <label for="inputNumber" class="col-sm-2 col-form-label"  >Image</label>
                            <div class="col-sm-5">
                                <input class="form-control" type="file" id="formFile" name="image" >
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label" >Title</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" name="title" value="{{ old('title') }}">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="inputPassword" class="col-sm-2 col-form-label" name="content">Content</label>
                            <div class="col-sm-10">
                              <textarea class="form-control" style="height: 100px" name="content" value="{{ old('content') }}"></textarea>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Category</label>
                            <div class="col-sm-5">
                              <select id="category" class="form-select" aria-label="Default select example" name="category">
                                    <option selected>Open this select menu</option>
                                    {{-- {{dd($category)}} --}}
                                    @foreach ($category as $row)
                                    <option value="{{$row->id}}" >{{$row->name}}</option>
                                    @endforeach 
                                </select>
                            </div>
                        </div>
    
                        <fieldset class="row mb-3">
                            <legend class="col-form-label col-sm-2 pt-0">Label</legend>
                            <div class="col-sm-10">
                              <div class="form-check">
                                <input class="form-check-input" type="radio" name="label" id="label1" value="1"  checked>
                                <label class="form-check-label" for="label1">
                                  Headline
                                </label>
                              </div>
                              <div class="form-check">
                                <input class="form-check-input" type="radio" name="label" id="label2" value="2">
                                <label class="form-check-label" for="label2">
                                  Tranding
                                </label>
                              </div>
                              <div class="form-check">
                                <input class="form-check-input" type="radio" name="label" id="label2" value="3">
                                <label class="form-check-label" for="label2">
                                  Slider
                                </label>
                              </div>
                              <div class="form-check">
                                <input class="form-check-input" type="radio" name="label" id="label2" value="4">
                                <label class="form-check-label" for="label2">
                                  Primary
                                </label>
                              </div>
                              <div class="form-check disabled">
                                <input class="form-check-input" type="radio" name="label" id="label" value="option" disabled>
                                <label class="form-check-label" for="label3">
                                  Third disabled radio
                                </label>
                              </div>
                            </div>
                          </fieldset>

                          <input type="submit" class="btn btn-primary" value="Save">
                    </form>
                </div>
              </div>
            </div>
        </div>
    </section>


    <script type="text/javascript">
      $('#category').change(function() { 
        var category = $(this).val(); 
        $.ajax({
          type: 'POST', 
          url: 'ajax_jurusan.php', 
          data: 'category_id=' + category, 
          success: function(response) { 
            $('#jurusan').html(response); 
          }
        });
      });
     
    </script>
@endsection