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
        <div class="bg-main flex h-screen">

            <div class="text-white lg:text-9xl sm:text-xl py-20 px-20 text-center">

                Home Brew Companion

                <div class="bg-gray-400 bg-opacity-9 text-sm fixed bottom-0 left-0 px-6 py-4 sm:block">
                    <span>Photo by <a href="https://unsplash.com/@peecho?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Claude Piché</a> on <a href="https://unsplash.com/?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></span>
                </div>
            </div>
            {{-- RIGHT SIDE --}}
            <div class="bg-gray-400 bg-opacity-50 lg:w-1/4 sm:w-full right-0 fixed h-screen shadow">
                @if (Route::has('login'))
                    <div class="flex flex-col">
                        @auth

                            <div class="p-5">
                                <a href="{{ url('/dashboard') }}" class="brd-btn">Dashboard</a>
                            </div>
                            
                        @else

                            <div class="p-5">
                                <a href="{{ route('login') }}" class="brd-btn">Login</a>
                            </div>

                            @if (Route::has('register'))
                                <div class="p-5">
                                    <a href="{{ route('register') }}" class="brd-btn">Register</a>
                                </div>
                            @endif

                        @endauth
                    </div>
                @endif
            </div>

        </div>
    </body>
</html>
