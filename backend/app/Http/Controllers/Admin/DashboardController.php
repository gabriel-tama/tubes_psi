<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Barang;
use App\Models\Detail;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    //

    public function registered()
    {
        $users = User::all();
        return view('admin.register')->with('users', $users);
    }

    public function all_details()
    {
        $details = DB::table('details')
            ->join('barangs', 'barangs.id', '=', 'details.id_barang')
            ->join('transaksis', 'transaksis.id', '=', 'details.id_transaksi')
            ->join('users', 'users.id', '=', 'transaksis.id_pembeli')
            ->select('users.name', 'barangs.nama', 'barangs.foto', 'details.jumlah', 'details.harga_satuan', 'details.created_at')
            ->get();
        // dd($details);
        return view('admin.datadetail')->with('details', $details);
    }

    public function all_barangs()
    {
        $barangs = DB::table('barangs')
            ->join('users', 'barangs.id_penjual', '=', 'users.id')
            ->select('users.name', 'barangs.nama', 'barangs.foto', 'barangs.created_at', 'barangs.stok', 'barangs.harga')
            ->get();

        // dd($barangs);
        return view('admin.databarang')->with('barangs', $barangs);
    }

    public function dashboard()
    {
        $users = User::all()->count();
        $barangs = Barang::all()->count();
        $details = Detail::all();
        // dd($details);
        $cnt = 0;
        $total = 0;
        $sorted_barang = DB::table('details')
            ->join('barangs', 'details.id_barang', '=', 'barangs.id')
            ->join('users', 'users.id', '=', 'barangs.id_penjual')
            ->select('details.id_barang', 'users.name', 'barangs.nama', 'barangs.foto', 'details.harga_satuan', DB::raw('SUM(jumlah) as jumlah_total'))
            ->orderBy(DB::raw('jumlah_total'), 'desc')
            ->groupBy('id_barang')
            ->take(5)
            ->get();

        $recent_trans = DB::table('details')
            ->join('barangs', 'details.id_barang', '=', 'barangs.id')
            ->select('details.id', 'barangs.nama', 'details.jumlah', 'details.harga_satuan', 'details.created_at')
            ->take(5)
            ->get();

        $detail_days = Detail::select(DB::raw("COUNT(*) as count"), DB::raw("DAYNAME(created_at) as month_name"))
            ->whereYear('created_at', date('Y'))
            ->groupBy(DB::raw("Day(created_at)"))
            ->pluck('count', 'month_name');

        $details_month = Detail::select(DB::raw("COUNT(*) as count"), DB::raw("MONTHNAME(created_at) as month_name"))
            ->whereYear('created_at', date('Y'))
            ->groupBy(DB::raw("Month(created_at)"))
            ->pluck('count', 'month_name');
        $days_key = $detail_days->keys();
        $days_val = $detail_days->values();
        // dd($details_month);
        $month_key = $details_month->keys();
        $month_val = $details_month->values();
        $pembeli = User::where('role', '3')->count();
        $penjual = User::where('role', '2')->count();

        foreach ($details as $key) {
            $cnt += 1;
            $total += $key['jumlah'] * $key['harga_satuan'];
        }

        return view('admin.dashboard')
            ->with('users', $users)
            ->with('barangs', $barangs)
            ->with('details', $details)
            ->with('cnt', $cnt)
            ->with('total', $total)
            ->with('sorted_barang', $sorted_barang)
            ->with('recent_trans', $recent_trans)
            ->with('days_val', $days_val)
            ->with('days_key', $days_key)
            ->with('pembeli_cnt', $pembeli)
            ->with('penjual_cnt', $penjual)
            ->with('month_val', $month_val)
            ->with('month_key', $month_key);
    }
}
