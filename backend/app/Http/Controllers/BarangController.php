<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Barang;
use \App\Http\Resources\BarangResource;

class BarangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return BarangResource::collection(Barang::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $fields = $request->validate([
            'nama' => 'required|string',
            'harga' => 'required',
            'stok' => 'required',
            'deskripsi' => 'required',
            'foto' => 'required',
        ]);
        $foto_name = time() . '-' . $fields['nama'] . '.' . $request->file('foto')->extension();
        $data = Barang::create([
            'nama' => $fields['nama'],
            'harga' => $fields['harga'],
            'stok' => $fields['stok'],
            'deskripsi' => $fields['deskripsi'],
            'foto' => $foto_name,
            'id_penjual' => $request->user()->id,
        ]);

        $request->file('foto')->storeAs('public/images/shops/', $foto_name);

        $response = [
            'message' => 'Barang has been created.',
            'status_code' => '201',
            'data' => $data,

        ];
        return $response;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        return Barang::where('id', '=', $id)->get();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        //
        // if($request->user()->id==)
    }
    /**
     * Search for a name
     *
     * @param  \Illmuminate\Http\Request
     * @return \Illuminate\Http\Response
     */
    public function search(Request $request)
    {
        $name = $request->query('q');
        return Barang::where('nama', 'like', '%' . $name . '%')->get();
    }
    /**
     * Show specific user barang
     *
     * @param  \Illuminate\Http\Request  $request
     * 
     * @return \Illuminate\Http\Response
     */
    public function search_user(Request $request)
    {
        return Barang::where('id_penjual', '=', $request->user()->id)->get();
    }
}
