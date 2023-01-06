@extends('admin.layouts.master')
@section('content')

@php $no = 1 @endphp
<thead>
 <a  href="{{route('category.create')}}" class="btn btn-add"><i class="bi bi-plus-circle-fill"></i>Add Category</a>
<table class="table">
      <tr>
        <th scope="col" style="width:10%">No</th>
        <th scope="col" style="width:3%">Category</th>
        <th scope="col" style="width:50%" >Action</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($data as $row => $category)
      <tr>
        <td scope="row">{{$no++}}</td>
        <td scope="row"> {{ $category->name }} </td>
        <td>
          <a href={{route("category.edit",$category->id)}} style="color: black;"><button type="button" class="btn btn-edit"><i class="bx bxs-edit"></i></button></a>
          <form action="{{route('category.destroy', $category->id)}}" method="POST">
            @csrf
            @method('DELETE')   
          <button type="submit" class="btn btn-delete"><i class="bi bi-trash-fill"></i></button>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
@endsection