<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class BarangFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
            'nama' => $this->faker->name(),
            'harga' => $this->faker->numberBetween(1000, 2000),
            'stok' => $this->faker->numberBetween(2, 10),
            'deskripsi' => $this->faker->text(100),
            'foto' => $this->faker->text(20),
            'id_penjual' => $this->faker->numberBetween(1, 10)
        ];
    }
}
