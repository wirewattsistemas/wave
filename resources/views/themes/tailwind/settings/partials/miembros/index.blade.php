<div class="p-8">

    @subscriber
    @php
        $miembro = new \App\Http\Controllers\MiembroController();
        $miembros = $miembro->miembros(auth()->user());


        
    @endphp


    @if (isset($miembros))
<div class="flex justify-end w-full">
			<a  href="miembros.profile?id=0"   class="flex self-end justify-center w-auto px-4 py-2 mt-5 text-sm font-medium text-white transition duration-150 ease-in-out border border-transparent rounded-md bg-wave-600 hover:bg-wave-500 focus:outline-none focus:border-wave-700 focus:shadow-outline-wave active:bg-wave-700" dusk="update-profile-button">
                Agregar Miembro/Titular
            </a>

            
		</div>
        <table class="min-w-full overflow-hidden divide-y divide-gray-200 rounded-lg mt-10">
            <thead>
                <tr>
                    <th
                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase bg-gray-100">
                        Alta
                    </th>
                    <th
                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase bg-gray-100">
                        Nombre
                    </th>
                    <th
                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase bg-gray-100">
                        Correo
                    </th>
                    <th
                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase bg-gray-100">
                        Tipo
                    </th>
                    <th
                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-right text-gray-500 uppercase bg-gray-100">
                         
                    </th>
                    <th
                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-right text-gray-500 uppercase bg-gray-100">
                         
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($miembros as $miembro)
                    <tr class="@if ($loop->index % 2 == 0){{ 'bg-gray-50' }}@else{{ 'bg-gray-100' }}@endif">
                        <td class="px-6 py-4 text-sm font-medium leading-5 text-gray-900 whitespace-no-wrap">
                            {{ Carbon\Carbon::parse($miembro->created_at)->toFormattedDateString() }}
                        </td>
                        <td class="px-6 py-4 text-sm font-medium leading-5 text-left text-gray-900 whitespace-no-wrap">
                         ( {{ $miembro->id }})   {{ $miembro->nombres }} {{ $miembro->apellido_paterno }} {{ $miembro->apellido_materno }}
                        </td>
                        <td class="px-6 py-4 text-sm font-medium leading-5 text-left text-gray-900 whitespace-no-wrap">
                            {{ $miembro->correo }}  
                        </td>
                        <td class="px-6 py-4 text-sm font-medium leading-5 text-left text-gray-900 whitespace-no-wrap">
                            {{ $miembro->role->display_name }}

                        </td>
                        <td class="px-6 py-4 text-sm font-medium leading-5 text-right whitespace-no-wrap">
                            <a href="miembros.profile?id={{ $miembro->id }}" 

                                class="mr-2 text-indigo-600 hover:underline focus:outline-none">
                                Ver
                            </a>
                        </td>
                        <td class="px-6 py-4 text-sm font-medium leading-5 text-right whitespace-no-wrap">
                            <a href="miembros.profile?id={{ $miembro->id }}" 

                                class="mr-2 text-indigo-600 hover:underline focus:outline-none">
                                Editar
                            </a>
                        </td>

                    </tr>
                @endforeach
            </tbody>
        </table>

    @else
        <p>Sorry, there seems to be an issue retrieving your miembros or you may not have any miembros yet.</p>
    @endif

    @notsubscriber
    <p class="text-gray-600">When you subscribe to a plan, this is where you will be able to download your miembros.
    </p>
    <a href="{{ route('wave.settings', 'plans') }}"
        class="inline-flex self-start justify-center w-auto px-4 py-2 mt-5 text-sm font-medium text-white transition duration-150 ease-in-out border border-transparent rounded-md bg-wave-600 hover:bg-wave-500 focus:outline-none focus:border-wave-700 focus:shadow-outline-wave active:bg-wave-700">View
        Plans</a>
    @endsubscriber

</div>
