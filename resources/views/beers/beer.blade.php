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


                    <div class="beer-card">
                        {{ $beer->name }}  Brewed on: {{ $beer->brew_date }}
                        <div class="text-5xl text-yellow-900 p-10">
                            {{ $beer->final_gravity }}
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