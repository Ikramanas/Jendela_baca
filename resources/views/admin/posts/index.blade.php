@extends('admin.layouts.master')
@section('content')
    <div class="pagetitle">
        <h1>{{$title}}</h1>
        <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active">{{$title}}</li>
        </ol>
        </nav>
    </div><!-- End Page Title -->
    {{-- {{dd(session('success'))}} --}}
    
    @include('admin.partials.alert')
    {{-- {{dd($posts)}} --}}

    <section class="section">
        <div class="row">
          <div class="col-lg-12">
  
            <div class="card">
              <div class="card-body">
                <h5 class="card-title"></h5>
                
                <!-- Default Table -->
                <table class="table">
                  <thead>
                    {{-- <button type="button" class="btn btn-info"><i class="bi bi-plus-circle-fill"></i></button> --}}
                   <a  href="{{route('post.create')}}" class="btn btn-add"><i class="bi bi-plus-circle-fill"></i>Add Post</a>
                    <tr>
                      <th scope="col">No</th>
                      <th scope="col">Image</th>
                      <th scope="col">Title</th>
                      {{-- <th scope="col">Content</th> --}}
                      <th scope="col">Category</th>
                      <th scope="col">Label</th>
                      <th scope="col">Created at</th>
                      <th scope="col" style="width:10%" >Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($posts as $row => $post)
                    {{-- {{dd($post->category->name)}} --}}
                    <tr>
                      <td scope="row"> {{ $posts->firstItem() + $row}} </td>
                      <td scope="col"><img src="assets/admin/img/{{$post->image}}" alt="" width="100" height="100"> </td>
                      <td scope="col">{{$post->title}}</td>
                      {{-- <td scope="col">{{$post->content}}</td> --}}
                      <td scope="col" >{{$post->category->name}}</td>
                      <td scope="col" >
                        @if ($post->label == 0)
                          Primary
                        @elseif ($post->label == 1)
                          Headline News
                        @elseif ($post->label == 2)
                         Trending
                        @elseif ($post->label == 3)
                        Slider
                        @endif
                      </td>
                      <td scope="col">{{$post->created_at}}</td>
                      <td>
                        <a href={{route("post.show",$post->id)}} style="color: black;"> <button type="button" class="btn btn-show"><i class="bi bi-eye-fill"></i></button></a>
                        <a href={{route("post.edit",$post->id)}} style="color: black;"><button type="button" class="btn btn-edit"><i class="bx bxs-edit"></i></button></a>
                        
                        <form action="{{route('post.destroy' ,$post->id)}}" method="post">
                          @csrf
                          @method('DELETE')   
                          <button type="submit" class="btn btn-delete"><i class="bi bi-trash-fill"></i></button>
                        </form>    
                      </td>
                    </tr>

                    @endforeach
                  </tbody>
                </table>
                <!-- End Default Table Example -->
                {{ $posts->links() }}  
              </div>
            </div>
  
  
        </div>
      </section>
@endsection