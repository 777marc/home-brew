<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                  
                    <!-- Container -->
                    <div class="flex flex-wrap mt-2 mx-2">
                        <!-- Item -->
                        @foreach( $beers as $beer )
                        <div class="w-full md:w-1/2 lg:w-1/3 px-2 my-2">
                            <div class="shadow-md bg-white">
                                <div class="flex flex-col p-4">
                                    <p class="text-2xl">{{ $beer->name }}</p>
                                    <p class="text-gray-600">Brewed: {{ $beer->brew_date }}</p>
                                    <p class="text-gray-600">Bottled: {{ $beer->bottle_date }}</p>
                                    <p class="text-gray-600">Cold Conditioned: {{ $beer->cold_condition_date }}</p>
                                    <p class="text-gray-600">{{ $beer->notes }}</p>
                                    <button class="self-end mt-4">Show more...</button>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>


                </div>
            </div>
        </div>
    </div>
</x-app-layout>
