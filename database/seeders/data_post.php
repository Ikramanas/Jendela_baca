<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Post;

class data_post extends Seeder
{

        public function run()
        {
     
            $faker = Faker::create('id_ID');
     
            for($i = 1; $i <= 50; $i++){
     
                  // insert data ke table pegawai menggunakan Faker
                DB::table('post')->insert([
                    'image' => $faker->image,
                    'title' => $faker->title,
                    'content' => $faker->content,
                    'category_id' => $faker->category_id,
                    'label' => $faker->$label
            ]);
    
        }
    
    }
}
