<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Test extends Migration
{
    public function up()
    {
        $this->forge->addField([
                        'blog_id'          => [
                                'type'           => 'INT',
                                'constraint'     => 11,
                                'unsigned'       => true,
                                'auto_increment' => true,
                        ],
                        'blog_title'       => [
                                'type'       => 'VARCHAR',
                                'constraint' => '50',
                        ],
                        'blog_description' => [
                                'type' => 'TEXT',
                                'null' => true,
                        ],
                        'created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP',
                        'updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP',

                ]);
                $this->forge->addKey('blog_id', true);
                $this->forge->createTable('blog');
    }

    public function down()
    {
        $this->forge->dropTable('blog');
    }
}
