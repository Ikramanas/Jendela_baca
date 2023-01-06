<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class HomeController extends Controller
{
    public function index()
    {
        $data = Post::All();
        $count = Post::count();
        $title  = 'Dashboard';
        return view('admin.index',compact(['data','count','title']));
    }

}
