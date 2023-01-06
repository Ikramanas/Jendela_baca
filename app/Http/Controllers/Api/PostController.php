<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use App\Models\Post;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $post=Post::latest()->paginate(5);

        return new PostResource(true, 'List Data Post', $post);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator  = Validator::make($request->all(), 
        [
            'image'     => 'required|image|mimes:jpeg,jpg,png|max:2040',
            'title'     => 'required',
            'content'   => 'required'    
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/posts',$image->hashName());

        //create post
        $post = Post::create([
            'image'     => $image->hashName(),
            'title'     => $request->title,
            'content'   => $request->content
        ]);

        return new PostResource(true, 'data berhasil ditambahkan', $post);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
         return new PostResource(true, 'Data Post Ditemukan', $post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //definisikan rules validator
        $validator = Validator::make($request->all(), [
            'title'     => 'required',
            'content'   => 'required'
        ]);
        //cek jika validasi gagal
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        //cek jika gambar tidak kosong
        if ($request->hasFile('image')) {
            //upload gambar
            $image = $request->file('image');
            $image->storeAs('public/post', $image->hashName());
            //hapus gambar lama
            Storage::delete('public/post'.$post->image);
            //update dengan gambar baru
            $post->update([
                'image' => $image->hashName(),
                'title' => $request->title,
                'content'=> $request->content,
                'category'   => $request->category,
                'label'   => $request->label
            ]);
        }else{
            //posting tanpa gambar
            $post->update([
                'title' => $request->title,
                'content'=> $request->content, 
                'category'   => $request->category,
                'label'   => $request->label
            ]);
        }
        return new PostResource(true, 'data berhasil diubah', $post);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //delete image
        Storage::delete('public/posts/'.$post->image);

        //delete post
        $post->delete();

        //return response
        return new PostResource(true, 'Data Post Berhasil Dihapus!', null);
    }
}
