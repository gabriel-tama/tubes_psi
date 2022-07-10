<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    use HasFactory;
    protected $fillable = ['id_pembeli'];

    public function details()
    {
        return $this->hasMany(Detail::class);
    }

    public function users()
    {
        return $this->belongsTo(User::class);
    }
}
