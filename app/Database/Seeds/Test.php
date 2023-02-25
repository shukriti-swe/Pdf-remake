<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class Test extends Seeder
{
    public function run()
    {
        $data = [
                    'blog_title' => 'blog_title test',
                    'blog_description'    => 'blog_description test'
                ];

                // Simple Queries
                $this->db->query("INSERT INTO blog
                (blog_title, blog_description) VALUES(:blog_title:, :blog_description:)", $data);

                // Using Query Builder
                for($i=0; $i<500; $i++){
                    $this->db->table('blog')->insert($data);
                }
    }
}
