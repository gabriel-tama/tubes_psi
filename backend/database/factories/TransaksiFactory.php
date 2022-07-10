<?php

namespace Database\Factories;

use App\Models\Keranjang;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class TransaksiFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // $id_pembeli = ;
        // $id_pembeli=Keranjang::all();
        return [
            //
            'id_pembeli' => Keranjang::all()->unique()->random()->id_pembeli,
            // 'id_pembeli' => User::where('role', '=', '3')->get()->random()->id,

            // 'alamat' => User::where('id', '=', $id_pembeli)->get('alamat'),
        ];
    }
}
