<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class KeranjangResource extends JsonResource
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
            "id" => (string) $this->id,
            "nama" => $this->nama,
            "harga" => (string)$this->harga,
            "stok" => (string)$this->stok,
            // "deskripsi": "Neque sit suscipit perspiciatis non aliquid corrupti. Occaecati fugit nostrum vitae omnis.",
            "foto" => asset('/storage/images/shops/' . $this->foto),
            "id_penjual" => $this->id_penjual,
            // "created_at": "2022-07-07 07:26:30",
            // "updated_at": "2022-07-07 07:26:30",
            "jumlah" => (string)$this->jumlah,
            "id_pembeli" => (string)$this->id_pembeli
        ];
    }
}
