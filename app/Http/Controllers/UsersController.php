<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{
    /**
     * Log In User
     */
    public function login(Request $request)
    {
        if (!Auth::attempt($request->only(['email', 'password']))) {
            return $this->sendFailed("invalid credentials");
        }

        $user = User::where('email', $request->email)->first();

        $token = $user->createToken('my-app-token')->plainTextToken;

        $response = [
            'token' => $token
        ];

        return $this->sendSuccess($response, 'signed in');
    }

    /**
     * Logout current user
     */
    public function logout(Request $request)
    {
        $user = $request->user();
        $user->tokens()->delete();

        return $this->sendSuccess([], 'logged out');
    }

    /**
     * Detects if a user is logged in
     */
    public function authenticated()
    {
        if (Auth::check()) {
            return $this->sendSuccess([
                'authenticated' => true,
            ], 'logged in');
        } else {
            return $this->authenticationFailure();
        }
    }

    /**
     * Get the current logged in user
     */
    public function currentUser(Request $request)
    {
        return $this->sendSuccess([
            'user' => $request->user(),
        ]);
    }

    /**
     * Books bought buy current user
     */
    public function books(Request $request)
    {
        return $this->sendSuccess([
            'books' => $request->user()->books()->get(),
        ], 'books of current user');
    }

    /**
     * Buy a book
     */
    public function buyBook(Request $request)
    {
        // change book's user ID
        Book::where('id', $request['book_id'])
            ->update([
                'user_id' => $request->user()->id
            ]);

        return $this->sendSuccess([], 'book was bought');
    }

    /**
     * Buy a book
     */
    public function removeBook(Request $request)
    {
        // change book's user ID
        Book::where('id', $request['book_id'])
            ->update([
                'user_id' => null
            ]);

        return $this->sendSuccess([], 'book was removed');
    }
}
