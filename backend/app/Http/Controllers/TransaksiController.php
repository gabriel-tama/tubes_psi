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
        if ($request->user()->role == 2) {
            $res = DB::table('transaksis')
                ->join('details', 'details.id_transaksi', '=', 'transaksis.id')
                ->join('barangs', 'barangs.id', '=', 'details.id_barang')
                ->join('users', 'users.id', '=', 'transaksis.id_pembeli')
                ->select('barangs.nama', 'details.*', 'users.name', 'users.email')
                ->where('barangs.id_penjual', '=', $request->user()->id)
                ->orderBy(DB::raw('details.created_at'), 'desc')
                ->get();

            return $res;
        } else {
            $res = DB::table('transaksis')
                ->join('details', 'details.id_transaksi', '=', 'transaksis.id')
                ->join('barangs', 'barangs.id', '=', 'details.id_barang')
                ->join('users', 'users.id', '=', 'barangs.id_penjual')
                ->select('barangs.nama', 'details.*', 'users.name', 'users.email')
                ->where('transaksis.id_pembeli', '=', $request->user()->id)
                ->orderBy(DB::raw('details.created_at'), 'desc')
                ->get();

            return $res;
        }
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

    public function penjualanku(Request $request)
    {
        // dd($request->user()->id);
        $sorted_barang = DB::table('details')
            ->join('barangs', 'details.id_barang', '=', 'barangs.id')
            ->join('users', 'users.id', '=', 'barangs.id_penjual')
            ->select('users.id', 'details.id_barang', 'users.name', 'barangs.nama', 'barangs.foto', 'details.harga_satuan', DB::raw('SUM(jumlah) as jumlah_total'))
            ->where('users.id', '=', $request->user()->id)
            ->orderBy(DB::raw('jumlah_total'), 'desc')
            ->groupBy('id_barang')
            ->take(3)
            ->get();

        // $details_month = Detail::select(DB::raw("COUNT(*) as count"), DB::raw("MONTHNAME(created_at) as month_name"))
        //     ->join('barangs', 'barangs.id', '=', 'details.id_barang')
        //     ->where('barangs.id', '=', Barang::where('id_penjual', '=', $request->user()->id)->get()->id)
        //     ->whereYear('created_at', date('Y'))
        //     ->groupBy(DB::raw("Month(created_at)"))
        //     ->pluck('count', 'month_name');
        $details_month = DB::table('details')
            ->join('barangs', 'details.id_barang', '=', 'barangs.id')
            ->join('users', 'users.id', '=', 'barangs.id_penjual')
            ->select(DB::raw("COUNT(*) as count"), DB::raw("MONTHNAME(details.created_at) as month_name"))
            ->where('barangs.id_penjual', '=', $request->user()->id)
            ->whereYear('details.created_at', date('Y'))
            ->groupBy(DB::raw("Month(details.created_at)"))
            ->pluck('count', 'month_name');
        // $days_key = $detail_days->keys();
        // $days_val = $detail_days->values();
        $month_key = $details_month->keys();
        $month_val = $details_month->values();
        foreach ($sorted_barang as &$key) {
            $key->foto = asset('/storage/images/shops/' . $key->foto);
            // dd($key->foto = );
        }
        $res = [
            "sorted_barang" => $sorted_barang,
            "month_key" => $month_key,
            "month_val" => $month_val,
        ];
        return ($res);
    }
}
