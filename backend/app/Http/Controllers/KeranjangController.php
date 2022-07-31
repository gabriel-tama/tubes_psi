<?php

namespace App\Http\Controllers;

use App\Http\Resources\KeranjangResource;
use App\Models\Keranjang;
use Illuminate\Http\Request;
use App\Models\Barang;
use Illuminate\Support\Facades\DB;

class KeranjangController extends Controller
{
    //
    public function index(Request $request)
    {
        // return $request->user();
        // return Barang::where('id', '=', Keranjang::where('id_pembeli', '=', $request->user()->id)->get()->id);
        // $user = $request->user()->id;
        $res = DB::table('barangs')
            ->join('keranjangs', 'barangs.id', '=', 'keranjangs.id_barang')
            ->select('barangs.*', 'keranjangs.jumlah', 'keranjangs.id_pembeli', 'keranjangs.id as id_keranjang')
            ->where('keranjangs.id_pembeli', '=', $request->user()->id)
            ->get();
        return KeranjangResource::collection($res);
    }

    public function store(Request $request)
    {
        // dd($request);

        $fields = $request->validate([
            'keranjangs' => 'required',
        ]);
        // dd($fields);
        // foreach ($fields['keranjangs'] as $key) {
        //     dd($key['id_barang']);
        // }
        $cnt = 0;
        $res = [];
        foreach ($fields['keranjangs'] as $key) {
            $res[$cnt] = Keranjang::updateOrCreate(
                ['id_barang' => $key['id'], 'id_pembeli' => $request->user()->id],
                ['jumlah' => $key['jumlah']]
            );
            $cnt += 1;
        }
        return $res;
    }
}
