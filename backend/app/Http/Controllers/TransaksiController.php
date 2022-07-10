<?php

namespace App\Http\Controllers;

use App\Http\Resources\TransaksiResource;
use App\Models\Barang;
use App\Models\Detail;
use App\Models\Transaksi;
use Illuminate\Database\Query\Expression;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TransaksiController extends Controller
{
    //
    // protected $fillable = ['total'];
    public function index(Request $request)
    {
        // return $request->user();
        // return Barang::where('id', '=', Keranjang::where('id_pembeli', '=', $request->user()->id)->get()->id);
        // $user = $request->user()->id;
        $res = DB::table('transaksis')
            ->join('details', 'details.id_transaksi', '=', 'transaksis.id')
            ->join('barangs', 'barangs.id', '=', 'details.id_barang')
            ->join('users', 'users.id', '=', 'transaksis.id_pembeli')
            ->select('barangs.nama', 'details.*', 'users.name', 'users.email')
            ->where('transaksis.id_pembeli', '=', $request->user()->id)
            ->get();

        return $res;
    }

    public function store(Request $request)
    {
        $fields = $request->validate([
            'details' => 'required',
        ]);
        $transaksi = Transaksi::create([
            'id_pembeli' => $request->user()->id,
        ]);
        foreach ($fields['details'] as $detail) {
            Detail::create([
                'id_transaksi' => $transaksi['id'],
                'id_barang' => $detail['id'],
                'jumlah' => $detail['jumlah'],
                'harga_satuan' => $detail['harga'],
            ]);
            Barang::where('id', $detail['id'])->decrement('stok', $detail['jumlah']);
        }

        return ($transaksi);
    }
}
