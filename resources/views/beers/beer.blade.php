<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Beer:') }}  {{ $beer->name }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">

                    @php
                        $ig = $beer->inital_gravity ?? 1.050;
                        $fg = $beer->final_gravity ?? 1.010;
                        $abv = ($ig - $fg) * 131;
                    @endphp

                    <div class="beer-card">
                        <div class="text-2xl text-yellow-800 pb-5">
                            {{ $beer->name }}  Brewed on: {{ Carbon\Carbon::parse($beer->brew_date)->format('m/d/Y') }}
                        </div>
                        <div class="text-xl text-yellow-800 pb-5">
                            ig: {{ $ig }} |
                            fg: {{ $fg }} |
                            abv: {{ $abv }}
                        </div>
                        <div class="text-lg text-yellow-500">
                            Bottled on: {{ Carbon\Carbon::parse($beer->bottle_date)->format('m/d/Y') }}
                        </div>
                        <div class="text-lg text-yellow-800">
                            notes: {{ $beer->notes }}
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</x-app-layout>