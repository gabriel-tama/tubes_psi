<?php

namespace App\Http\Controllers;

use App\Http\Resources\AuthResource;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    //
    public function register(Request $request)
    {
        $fields = $request->validate([
            'name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|confirmed',
            'alamat' => 'required',
            'role' => 'required',
        ]);
        $user =  User::create([
            'name' => $fields['name'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['password']),
            'alamat' => $fields['alamat'],
            'role' => $fields['role']
        ]);
        $token = $user->createToken('myapptoken')->plainTextToken;
        $response = [
            'message' => 'User has been created',
            'user' => $user,
            'token' => $token,
            'status_code' => '201'
        ];
        return new AuthResource($response);
    }

    public function logout(Request $request)
    {
        auth()->user()->tokens()->delete();
        $response = [
            'message' => 'User Logged out',
            'status_code' => '302'
        ];
        return new AuthResource($response);
    }

    public function login(Request $request)
    {
        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        // Check email
        $user = User::where('email', $fields['email'])->first();

        // Check password
        if (!$user || !Hash::check($fields['password'], $user->password)) {

            $response = [
                'message' => 'Bad Creds',
                'status_code' => '401',
            ];
            return new AuthResource($response);
        }

        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return new AuthResource($response);
    }
}
