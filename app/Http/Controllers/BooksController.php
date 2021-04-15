<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class BooksController extends Controller
{
    /**
     * Get all books
     */
    public function index()
    {
        return $this->sendSuccess([
            'books' => Book::all()
        ], 'all books');
    }

    /**
     * Books current user has not bought
     */
    public function availableBooks(Request $request)
    {
        // change book's user ID
        $books = Book::whereNull('user_id')->get();

        return $this->sendSuccess([
            'books' => $books,
        ], 'books for sale');
    }
}
