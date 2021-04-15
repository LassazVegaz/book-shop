<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     * Send a succesfull message
     */
    public function sendSuccess(array $result, string $msg = '')
    {
        return response()->json([
            'success' => true,
            'message' => $msg,
            'result' => $result,
        ]);
    }

    /**
     * Send a failed message
     */
    public function sendFailed(string $msg)
    {
        return response()->json([
            'success' => false,
            'message' => $msg,
        ]);
    }

    /**
     * Send when a use is not authenticated
     */
    public function authenticationFailure()
    {
        return $this->sendFailed("not authenticated");
    }
}
