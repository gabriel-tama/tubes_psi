@extends('layouts.master')

@section('title')
    Data Detail Transaksi
@endsection

@section('page')
    Data Detail Transaksi
@endsection

@section('content')
             <div class="row">
                <div class="col-12">
                    <div class="card my-4">
                        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                            <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                <h6 class="text-white text-capitalize ps-3">Detail Transaksi</h6>
                            </div>
                        </div>
                        <div class="card-body px-0 pb-2">
                            <div class="table-responsive p-0">
                                <table class="table align-items-center mb-0">
                                    <thead>
                                        <tr>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Barang</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Nama Pembeli</th>
                                            <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jumlah Barang</th>
                                            <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Harga Barang</th>
                                            <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Total</th>
                                            <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tanggal Mendaftar</th>
                                            <th class="text-secondary opacity-7"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($details as $item)
                                        <tr>
                                            <td>
                                                <div class="d-flex px-2 py-1">
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="mb-0 text-sm">{{$item->nama}}</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0">{{$item->name}}</p>
                                                
                                                
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0">{{$item->jumlah}}</p>
                                                
                                                
                                            </td>

                                            <td>
                                                <p class="text-xs font-weight-bold mb-0">Rp.{{$item->harga_satuan}}</p>
                                                
                                                
                                            </td>

                                            <td>
                                                <p class="text-xs font-weight-bold mb-0">Rp.{{$item->jumlah*$item->harga_satuan}}</p>
                                            </td>

                                            {{-- <td class="align-middle text-center text-sm">
                                                <span class="badge badge-sm bg-gradient-success">Online</span>
                                            </td> --}}
                                            <td class="align-middle text-center">
                                                <span class="text-secondary text-xs font-weight-bold">{{$item->created_at}}</span>
                                            </td>
                                            <td class="align-middle">
                                                <a href="javascript:;" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                                                    Edit
                                                </a>
                                            </td>
                                        </tr>
                                        @endforeach
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
@endsection


@section('scripts')
    
@endsection