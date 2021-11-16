@extends('theme::layouts.app')


@section('content')

<!-- paso el primer registro, welcome 
https://back.gana.com/checkout/welcome?complete=true

&&  isDataX compelted 
-->
@if(auth()->user()->name && !false ) 

<div class="flex flex-col px-8 mx-auto my-6 lg:flex-row max-w-7xl xl:px-5">
	<div
		class="flex flex-col justify-start flex-1 mb-5 overflow-hidden bg-white border rounded-lg lg:mr-3 lg:mb-0 border-gray-150">
		<div class="flex flex-wrap items-center justify-between p-5 bg-white border-b border-gray-150 sm:flex-no-wrap">
			<div class="flex items-center justify-center w-12 h-12 mr-5 rounded-lg bg-wave-100">
				<svg class="w-6 h-6 text-wave-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"
					xmlns="http://www.w3.org/2000/svg">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
				</svg>
			</div>

			<div class="relative flex-1">
				<h3 class="text-lg font-medium leading-6 text-gray-700"> Perfil Incompleto </h3>
			
			</div>

		</div>
		<div class="relative p-5">
			<p class="text-sm leading-5 text-gray-500 mt">
				Hemos Detectado que no ha registrado sus datos de membresia , son necesarios para completar su registro.
			</p>

			
			<span class="inline-flex mt-5 rounded-md shadow-sm">
				<a href="{{ route('wave.settings.profile.put') }}"
					class="inline-flex items-center px-3 py-2 text-sm font-medium leading-4 text-gray-700 transition duration-150 ease-in-out bg-white border border-gray-300 rounded-md hover:text-gray-500 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:text-gray-800 active:bg-gray-50">
					Capturar Datos
				</a>
			</span>
		</div>
	</div>

</div>
@endif

    




    <div class="flex flex-col px-8 mx-auto my-6 lg:flex-row max-w-7xl xl:px-5">
        <div
            class="flex flex-col justify-start flex-1 mb-5 overflow-hidden bg-white border rounded-lg lg:mr-3 lg:mb-0 border-gray-150">
            <div class="flex flex-wrap items-center justify-between p-5 bg-white border-b border-gray-150 sm:flex-no-wrap">
                <div class="flex items-center justify-center w-12 h-12 mr-5 rounded-lg bg-wave-100">
                    <svg class="w-6 h-6 text-wave-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                        xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                </div>





                <div class="relative flex-1">

                    <div>INDEX</div>

                    <h3 class="text-lg font-medium leading-6 text-gray-700">
                        Roles : @foreach (auth()->user()->roles as $rol)
                            - {{ $rol->name }} -
                        @endforeach
                    </h3>
                    <p class="text-sm leading-5 text-gray-500 mt">
                        Rol Principal (auth) : {{ auth()->user()->role->display_name }}
                    </p>
                </div>

            </div>
            <div class="relative p-5">
                <p class="text-base leading-loose text-gray-500">
                    <code>
                        {{ auth()->user()->role->display_name }}
                    </code>
                    <hr>
                    <code>
                        {{ auth()->user() }}
                    </code>

                    <hr>
                    @foreach (auth()->user() as $index => $key)
                        <td>{{ $index }}</td>
                    @endforeach

                    <br><br> {{ auth()->user()->role->display_name }}
                </p>
                <span class="inline-flex mt-5 rounded-md shadow-sm">
                    <a href="{{ url('docs') }}"
                        class="inline-flex items-center px-3 py-2 text-sm font-medium leading-4 text-gray-700 transition duration-150 ease-in-out bg-white border border-gray-300 rounded-md hover:text-gray-500 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue active:text-gray-800 active:bg-gray-50">
                        {{ auth()->user()->role->display_name }}
                    </a>
                </span>
            </div>
        </div>

    </div>

@endsection
