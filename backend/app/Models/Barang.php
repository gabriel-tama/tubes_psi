<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama',
        'stok',
        'harga',
        'deskripsi',
        'foto',
        'id_penjual'
    ];
    public function users()
    {
        return $this->belongsTo(User::class);
    }

    public function details()
    {

        return $this->hasMany(Detail::class);
    }

    // public function getFotoAttribute($image)
    // {
    //     return asset('/storage/images/shops' . $image);
    // }
}
