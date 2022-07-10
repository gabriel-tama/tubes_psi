<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BarangResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => (string)$this->id,
            'nama' => (string)$this->nama,
            'harga' => (string)$this->harga,
            'stok' => (string)$this->stok,
            'deskripsi' => (string)$this->deskripsi,
            'id_penjual' => (string)$this->id_penjual,
            // 'foto' => $this->foto,
            'foto' => asset('/storage/images/shops/' . $this->foto),
        ];
    }
}
