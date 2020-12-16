<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{{ config('app.name', 'HBC') }}</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    </head>
    <body class="antialiased">
        <div class="bg-main flex">


            <div class="text-white text-5xl py-20 px-20">
                main div
                
                <div class="bg-gray-400 bg-opacity-9 text-sm fixed bottom-0 left-0 px-6 py-4 sm:block">
                    {{-- <span>Photo by <a href="https://unsplash.com/@peecho?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Claude Piché</a> on <a href="https://unsplash.com/?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></span> --}}
                    <span>Photo by <a href="https://unsplash.com/@timothycdykes?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Timothy Dykes</a> on <a href="https://unsplash.com/s/photos/beer?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></span>
                </div>
            </div>
            {{-- RIGHT SIDE --}}
            <div class="bg-gray-400 bg-opacity-50 lg:w-1/4 sm:w-full right-0 fixed h-screen shadow grid justify-items-center">
                @if (Route::has('login'))
                    <div class="pt-10">
                        @auth
                            <a href="{{ url('/dashboard') }}" class="btn btn-blue">Dashboard</a>
                        @else
                            <a href="{{ route('login') }}" class="btn btn-blue">Login</a>

                            @if (Route::has('register'))
                                <a href="{{ route('register') }}" class="btn btn-blue">Register</a>
                            @endif
                        @endauth
                    </div>
                @endif
            </div>

        </div>
    </body>
</html>
