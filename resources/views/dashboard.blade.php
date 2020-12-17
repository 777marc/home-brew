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
                  
                    <!-- component -->
                    <div class="w-2/3 mx-auto">
                        <table class="text-left w-full border-collapse"> <!--Border collapse doesn't work on this site yet but it's available in newer tailwind versions -->
                            <thead>
                                <tr>
                                    <th class="py-4 px-6 bg-grey-lightest font-bold uppercase text-sm text-grey-dark border-b border-grey-light">Name</th>
                                    <th class="py-4 px-6 bg-grey-lightest font-bold uppercase text-sm text-grey-dark border-b border-grey-light">Brewed On</th>
                                    <th class="py-4 px-6 bg-grey-lightest font-bold uppercase text-sm text-grey-dark border-b border-grey-light">Days Old</th>
                                    <th class="py-4 px-6 bg-grey-lightest font-bold uppercase text-sm text-grey-dark border-b border-grey-light">Actions</th>
                                </tr>
                            </thead>
                            <tbody>

                                @foreach( $beers as $beer )

                                    @php
                                        $date = \Carbon\Carbon::parse($beer->brew_date);
                                        $now = \Carbon\Carbon::now();
                                        $diff = $date->diffInDays($now);
                                    @endphp
            
                                    <tr class="hover:bg-grey-lighter">
                                        <td class="py-4 px-6 border-b border-grey-light">{{ $beer->name }}</td>
                                        <td class="py-4 px-6 border-b border-grey-light">{{ $beer->brew_date }}</td>
                                        <td class="py-4 px-6 border-b border-grey-light">{{ $diff }}</td>
                                        <td class="py-4 px-6 border-b border-grey-light">
                                            <a href="#" class="text-grey-lighter font-bold py-1 px-3 rounded text-xs bg-green hover:bg-green-dark">Edit</a>
                                            <a href="#" class="text-grey-lighter font-bold py-1 px-3 rounded text-xs bg-blue hover:bg-blue-dark">View</a>
                                        </td>
                                    </tr>
                                @endforeach
        

                            </tbody>
                        </table>
                        {{ $beers->links() }}
                        <div class="bg-gray-200 bg-opacity-9 text-sm fixed bottom-0 left-0 px-6 py-4 sm:block">
                            <div>Icons made by <a href="http://www.freepik.com/" title="Freepik">Freepik</a></div>
                        </div>
        
                    </div>

                </div>
            </div>
        </div>
    </div>
</x-app-layout>
