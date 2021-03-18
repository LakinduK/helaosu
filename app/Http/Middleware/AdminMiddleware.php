<?php

namespace App\Http\Middleware;

use Closure;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // if(auth()->user()->user_type == false && auth()->user()->status == true){
        //     return $next($request);
        // }

        if(auth()->user()==null){
            return redirect()->route('logout');
        }else if(auth()->user()->user_type == false && auth()->user()->status == true){
            return $next($request);
        }
        return redirect()->route('logout');
    }
}
