<?php

namespace Database\Seeders;

use App\Models\Keranjang;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        // $this->call(UserSeeder::class);
        // $this->call(BarangSeeder::class);
        // $this->call(KeranjangSeeder::class);
        // $this->call(TransaksiSeeder::class);
        $this->call(DetailSeeder::class);
    }
}
