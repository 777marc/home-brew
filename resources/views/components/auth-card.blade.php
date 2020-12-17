<div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">
    <div>
        {{ $logo }}
    </div>

    <div class="w-1/2 sm:max-w-md mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
        {{ $slot }}
    </div>
    <div class="bg-gray-400 bg-opacity-9 text-sm fixed bottom-0 left-0 px-6 py-4 sm:block">
        <div>Icons made by <a href="http://www.freepik.com/" title="Freepik">Freepik</a></div>
    </div>


</div>
