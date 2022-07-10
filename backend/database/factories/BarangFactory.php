<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Arr;

class BarangFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        $all = Storage::allFiles('public/images/shops');
        // $files = [];
        $fileNames = array_map(function ($file) {
            return basename($file); // remove the folder name
        }, $all);

        return [
            //
            'nama' => $this->faker->name(),
            'harga' => $this->faker->numberBetween(1000, 2000),
            'stok' => $this->faker->numberBetween(2, 10),
            'deskripsi' => $this->faker->text(100),
            // 'foto' => $this->faker->text(20),
            'id_penjual' => User::where('role', '=', '2')->get()->random()->id,
            'foto' => $this->faker->randomElement($fileNames),
        ];
    }
}
