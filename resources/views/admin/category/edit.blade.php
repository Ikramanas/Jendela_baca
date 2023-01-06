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
                    <h5 class="card-title">Edit Data</h5>
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

                    <form action={{route('category.update', $data->id)}} method="POST" enctype="multipart/form-data">
                      @csrf
                      @method('PUT')
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label" >Category</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" name="name" value="{{$data->name}}" >
                            </div>  
                            <div class="row">
                                <div class="mt-3">
                                <input type="submit" value="save" class="btn btn-add col-sm-2" >
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
              </div>
            </div>
        </div>
    </section>
@endsection