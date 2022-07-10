<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TransaksiResource extends JsonResource
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
            'id' => $this->id_transaksi,
            'details' => [
                'id_barang' => $this->id_barang,
                'nama_barang' => $this->nama,
                'harga' => $this->harga_satuan,
                'jumlah' => $this->jumlah,
            ]

        ];
    }
}
