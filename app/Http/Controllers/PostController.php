<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use App\Models\Post;
use App\Models\Category;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $pagination = 5;
        $posts = Post::orderBy('created_at', 'desc')->Paginate(5)->withQueryString();
        $title = 'All Post';
        return view('admin.posts.index',compact(['posts','title']));
    }

    public function create()
    {
        $category = Category::all();
        $title = 'Add data';
        return view('admin.posts.create', compact(['title','category']));
    }

    public function store(Request $request)
    {
        // dd($request->image);
        $validator = Validator::make($request->all(),
        [
            'image' => 'required|image',
            'title' => 'required',
            'content' => 'required',
            'category' => 'required'
        ]);
        
        if ($validator->fails()) {
            return redirect('post.create')
            ->withErrors($validator)
            ->withInput();
        }

        if ($request->hasfile('image')) {            
            $image = round(microtime(true) * 1000).'-'.str_replace(' ','-',$request->file('image')->getClientOriginalName());
            $request->file('image')->move(public_path('assets/admin/img'), $image);
            // dd($request->category);
                Post::create([
                    'image'  => $image,
                    'title' => $request->title,     
                    'content' => $request->content,
                    'category_id' => $request->category,
                    'label' => $request->label,
                ]);
            return redirect()->route('post.index')->with('success','Berhasil menyimpan data');
        }else{
            return redirect()->route('post.create')->with('success','Berhasil menyimpan data');
        }
    }

    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('client.single_post');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // dd($id);    
        $data = Post::find($id);
        $category = Category::all();
        $title = 'Edit Posts';
        return view('admin.posts.edit',compact(['data','title','category']));
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
        $this->validate($request, [
            'image'     => 'image|mimes:jpg,jpeg,png,gif,svg|max:2048',
            'title'     => 'required|min:5',
            'content'   => 'required|min:5'
        ]);

        if ($request->hasFile('image')) {
            //upload image baru
            $image = round(microtime(true) * 1000).'-'.str_replace(' ','-',$request->file('image')->getClientOriginalName());
            $request->file('image')->move(public_path('assets/admin/img'), $image);

            //delete image lama
            Storage::delete('assets/admin/img'.$image);

            //update data
            $post->update([
                'image'     => $image,
                'title'     => $request->title,
                'content'   => $request->content,
                'category'   => $request->category,
                'label'   => $request->label
            ]);

        }
        else { //jika tidak ada gambar yang ditemukan
            $post->update([
                'title'     => $request->title,
                'content'   => $request->content,
                'category'   => $request->category,
                'label'   => $request->label
            ]);     
        }
        //setelah melakukan update kembali ke index
        return redirect()->route('post.index')->with(['success' => 'Data berhasil diubah!']); 
    }

    public function destroy($id)
    {
        $post = Post::find($id);
        $post->delete();
        return redirect()->route('post.index')->with(['success' => 'Data berhasil dihapus..']);
    }
}
