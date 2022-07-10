<?php

namespace Database\Factories;

use App\Models\Barang;
use App\Models\Keranjang;
use App\Models\Transaksi;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class DetailFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $id_keranjang = Keranjang::all()->unique()->random()->id;
        $jumlah = Keranjang::where('id', '=', $id_keranjang)->get()->random()->jumlah;
        $id_barang = Keranjang::where('id', '=', $id_keranjang)->get()->random()->id_barang;
        $harga  = Barang::where('id', '=', $id_barang)->get()->random()->harga;
        return [
            //
            'id_transaksi' => Transaksi::all()->unique()->random()->id,
            'id_barang' => $id_barang,
            'jumlah' => $jumlah,
            'harga_satuan' => $harga

        ];
    }
}
