<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Detail extends Model
{
    use HasFactory;

    protected $fillable = ['jumlah', 'harga_satuan', 'id_barang', 'id_transaksi'];

    public function transaksis()
    {
        return $this->belongsTo(Transaksi::class);
    }

    public function barangs()
    {
        return $this->belongsTo(Barang::class);
    }
}
