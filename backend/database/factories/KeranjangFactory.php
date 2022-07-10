<?php

namespace Database\Factories;

use App\Models\Barang;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class KeranjangFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $id_barang = Barang::all()->random()->id;
        $jumlah_barang = Barang::where('id', '=', $id_barang)->get('stok');
        $jumlah = $this->faker->randomNumber(1, $jumlah_barang);
        return [
            //
            'id_pembeli' => User::where('role', '=', '3')->get()->random()->id,
            'id_barang' => $id_barang,
            'jumlah' => $jumlah,
        ];
    }
}
