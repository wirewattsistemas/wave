@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->display_name_singular)

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->display_name_singular }}
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form"
              action="{{ (isset($dataTypeContent->id)) ? route('voyager.'.$dataType->slug.'.update', $dataTypeContent->id) : route('voyager.'.$dataType->slug.'.store') }}"
              method="POST" enctype="multipart/form-data" autocomplete="off">
            <!-- PUT Method if we are editing -->
            @if(isset($dataTypeContent->id))
                {{ method_field("PUT") }}
            @endif
            {{ csrf_field() }}

            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-bordered">
                    {{-- <div class="panel"> --}}
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div class="panel-body">

                            <div class="form-group">
                                <label for="nombre">{{ __('voyager.miembro.nombre') }}</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="{{ __('voyager.miembro.nombre') }}"
                                       value="@if(isset($dataTypeContent->nombre)){{ $dataTypeContent->nombre }}@endif">
                            </div>
                        


                            <div class="form-group">
                                <label for="apellido_paterno">{{ __('voyager.miembro.apellido_paterno') }}</label>
                                <input type="text" class="form-control" id="apellido_paterno" name="apellido_paterno" placeholder="{{ __('voyager.miembro.apellido_paterno') }}"
                                       value="@if(isset($dataTypeContent->apellido_paterno)){{ $dataTypeContent->apellido_paterno }}@endif">
                            </div>



                            <div class="form-group">
                                <label for="apellido_materno">{{ __('voyager.miembro.apellido_materno') }}</label>
                                <input type="text" class="form-control" id="apellido_materno" name="apellido_materno" placeholder="{{ __('voyager.miembro.apellido_materno') }}"
                                       value="@if(isset($dataTypeContent->apellido_materno)){{ $dataTypeContent->apellido_materno }}@endif">
                            </div>




                            <div class="form-group">
                                <label for="username">{{ __('voyager.miembro.username') }}</label>
                                <input type="text" class="form-control" id="username" name="username" placeholder="{{ __('voyager.miembro.username') }}"
                                       value="@if(isset($dataTypeContent->username)){{ $dataTypeContent->username }}@endif">
                            </div>



                            <div class="form-group">
                                <label for="empresa">{{ __('voyager.miembro.empresa') }}</label>
                                <input type="text" class="form-control" id="empresa" name="empresa" placeholder="{{ __('voyager.miembro.empresa') }}"
                                       value="@if(isset($dataTypeContent->empresa)){{ $dataTypeContent->empresa }}@endif">
                            </div>




                            @php
                            $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};

                            $row     = $dataTypeRows->where('field', 'user_belongsto_role_relationship')->first();
                            if(is_string($row->details)){
                                $options = json_decode($row->details);
                            } else {
                                $options = $row->details;
                            }
                        @endphp



                            <div class="form-group">
                                <label for="role_id">Primary Role</label>
                                @php $roles = TCG\Voyager\Models\Role::all(); @endphp
                                <select name="role_id" id="role_id" class="select2" placeholder="">
                                    @foreach($roles as $role)
                                        <option value="{{ $role->id }}" @if($role->id == $dataTypeContent->role_id) selected @endif>{{ $role->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="additional_roles">{{ __('voyager::profile.roles_additional') }}</label>
                                @php
                                    $row = $dataTypeRows->where('field', 'user_belongstomany_role_relationship')->first();
                                    if(is_string($row->details)){
                                        $options = json_decode($row->details);
                                    } else {
                                        $options = $row->details;
                                    }
                                @endphp
                                @include('voyager::formfields.relationship')
                            </div>
 


                           


                            <div class="form-group">
                                <label for="telefono">{{ __('voyager.miembro.telefono') }}</label>
                                <input type="number" class="form-control" id="telefono" name="telefono" placeholder="Telefono"
                                       value="@if(isset($dataTypeContent->telefono)){{ $dataTypeContent->telefono }}@endif">
                            </div>


                            <div class="form-group">
                                <label for="telefono_casa">{{ __('voyager.miembro.telefono_casa') }}</label>
                                <input type="number" class="form-control" id="telefono_casa" name="telefono_casa" placeholder="Telefono Casa"
                                       value="@if(isset($dataTypeContent->telefono_casa)){{ $dataTypeContent->telefono_casa }}@endif">
                            </div>




                            <div class="form-group">
                                <label for="email">{{ __('voyager.miembro.email') }}</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="{{ __('voyager.miembro.email') }}"
                                       value="@if(isset($dataTypeContent->email)){{ $dataTypeContent->email }}@endif">
                            </div>

                            <div class="form-group">
                                <label for="fecha_nacimiento">{{ __('voyager.miembro.fecha_nacimiento') }}</label>
                                <input type="date" class="form-control" id="fecha_nacimiento" name="fecha_nacimiento" placeholder="{{ __('voyager.miembro.fecha_nacimiento') }}"
                                       value="@if(isset($dataTypeContent->fecha_nacimiento)){{ $dataTypeContent->fecha_nacimiento }}@endif">
                            </div>


                            @php
                            $generos=array('masculino','femenino');
                           @endphp
                           <div class="form-group">
                               <label for="genero">{{ __('voyager.miembro.genero') }}</label>
                               <select name="genero" id="genero" class="select2" placeholder="Genero">
                                   @foreach($generos as $genero)
                                       <option value="{{ $genero }}" @if($genero == $dataTypeContent->genero) selected @endif>{{ $genero }}</option>
                                   @endforeach
                               </select>
                           </div>



                           @php
                           $estados_civil=array('soltero','casado','divorciado','union-libre');
                          @endphp
                          <div class="form-group">
                              <label for="estado_civil">{{ __('voyager.miembro.estado_civil') }}</label>
                              <select name="estado_civil" id="estado_civil" class="select2" placeholder="Edo. Civil">
                                  @foreach($estados_civil as $estado_civil)
                                      <option value="{{ $estado_civil }}" @if($estado_civil == $dataTypeContent->estado_civil) selected @endif>{{ $estado_civil }}</option>
                                  @endforeach
                              </select>
                          </div>



                          <div class="form-group">
                            <label for="identificacion_oficial">{{ __('voyager.miembro.identificacion_oficial') }}</label>
                            <input type="text" class="form-control" id="identificacion_oficial" name="identificacion_oficial" placeholder="{{ __('voyager.miembro.identificacion_oficial') }}"
                                   value="@if(isset($dataTypeContent->identificacion_oficial)){{ $dataTypeContent->identificacion_oficial }}@endif">
                        </div>


              

                        <div class="form-group">
                            <label for="curp">{{ __('voyager.miembro.curp') }}</label>
                            <input type="text" class="form-control" id="curp" name="curp"  placeholder="{{ __('voyager.miembro.curp') }}"
                                   value="@if(isset($dataTypeContent->curp)){{ $dataTypeContent->curp }}@endif">
                        </div>








                        <div class="form-group">
                            <label for="domicilio">{{ __('voyager.miembro.domicilio') }}</label>
                            <input type="text" class="form-control" id="domicilio" name="domicilio"  placeholder="{{ __('voyager.miembro.domicilio') }}"
                            value="@if(isset($dataTypeContent->domicilio)){{ $dataTypeContent->domicilio }}@endif">
                            <small>{{ __('voyager::profile.domicilio_hint') }}</small>
                        </div>

                        <div class="form-group">
                            <label for="calle">{{ __('voyager.miembro.calle') }}</label>
                            <input type="text" class="form-control" id="calle" name="calle"  placeholder="{{ __('voyager.miembro.calle') }}"
                            value="@if(isset($dataTypeContent->calle)){{ $dataTypeContent->calle }}@endif">
                        </div>

                        <div class="form-group">
                            <label for="colonia">{{ __('voyager.miembro.colonia') }}</label>
                            <input type="text" class="form-control" id="colonia" name="colonia"  placeholder="{{ __('voyager.miembro.colonia') }}"
                                   value="@if(isset($dataTypeContent->colonia)){{ $dataTypeContent->colonia }}@endif">
                        </div>



                        <div class="form-group">
                            <label for="codigo_postal">{{ __('voyager.miembro.codigo_postal') }}</label>
                            <input type="text" class="form-control" id="codigo_postal" name="codigo_postal"  placeholder="{{ __('voyager.miembro.codigo_postal') }}"
                                   value="@if(isset($dataTypeContent->codigo_postal)){{ $dataTypeContent->codigo_postal }}@endif">
                        </div>

                        @php
                          $municipios = TCG\Voyager\Models\Role::all(); 
                        @endphp
                        <div class="form-group">
                            <label for="municipio_id">{{ __('voyager.miembro.municipio_id') }}</label>
                            <select name="municipio_id" id="municipio_id" class="select2" placeholder="Tipo">
                                @foreach($municipios as $municipio)
                                    <option value="{{ $municipio->id }}" @if($municipio->id == $dataTypeContent->municipio_id) selected @endif>{{ $municipio->name }}</option>
                                @endforeach
                            </select>
                        </div>


                        @php
                          $estados = TCG\Voyager\Models\Role::all(); 
                        @endphp
                        <div class="form-group">
                            <label for="estado_id">{{ __('voyager.miembro.estado_id') }}</label>
                            <select name="estado_id" id="estado_id" class="select2" placeholder="Tipo">
                                @foreach($estados as $estado)
                                    <option value="{{ $estado->id }}" @if($estado->id == $dataTypeContent->estado_id) selected @endif>{{ $estado->name }}</option>
                                @endforeach
                            </select>
                        </div>

                        @php
                          $paises = TCG\Voyager\Models\Role::all(); 
                        @endphp
                        <div class="form-group">
                            <label for="pais_id">{{ __('voyager.miembro.pais_id') }}</label>
                            <select name="pais_id" id="pais_id" class="select2" placeholder="Tipo">
                                @foreach($paises as $pais)
                                    <option value="{{ $pais->id }}" @if($pais->id == $dataTypeContent->pais_id) selected @endif>{{ $pais->name }}</option>
                                @endforeach
                            </select>
                        </div>






                        <div class="form-group">
                            <label for="fecha_registro">{{ __('voyager.miembro.fecha_registro') }}</label>
                            <input type="date" class="form-control" id="fecha_registro" name="fecha_registro"  placeholder="{{ __('voyager.miembro.fecha_registro') }}"
                                   value="@if(isset($dataTypeContent->fecha_registro)){{ $dataTypeContent->fecha_registro }}@endif">
                        </div>

<hr>
                      {{--   <div>
                            <h2>Facturacion</h2>
                        </div> --}}

                        <div class="form-group">
                            <label for="requiere_factura">{{ __('voyager.miembro.requiere_factura') }}</label> <br>
                         
                            <input type="checkbox" @if ($dataTypeContent->requiere_factura) checked @endif id="requiere_factura"  name="requiere_factura" data-toggle="toggle" data-on="Si" data-off="No">
 

                        </div>









                        <div class="form-group">
                            <label for="rfc">{{ __('voyager.miembro.rfc') }}</label>
                            <input type="text" class="form-control" id="rfc" name="rfc"  placeholder="{{ __('voyager.miembro.rfc') }}"
                                   value="@if(isset($dataTypeContent->rfc)){{ $dataTypeContent->rfc }}@endif">
                        </div>
                        
                        <div class="form-group">
                            <label for="razon_social">{{ __('voyager.miembro.razon_social') }}</label>
                            <input type="text" class="form-control" id="razon_social" name="razon_social"  placeholder="{{ __('voyager.miembro.razon_social') }}"
                                   value="@if(isset($dataTypeContent->razon_social)){{ $dataTypeContent->razon_social }}@endif">
                        </div>
                        <div class="form-group">
                            <label for="domicilio_fiscal">{{ __('voyager.miembro.domicilio_fiscal') }}</label>
                            <input type="text" class="form-control" id="domicilio_fiscal" name="domicilio_fiscal"  placeholder="{{ __('voyager.miembro.domicilio_fiscal') }}"
                                   value="@if(isset($dataTypeContent->domicilio_fiscal)){{ $dataTypeContent->domicilio_fiscal }}@endif">
                        </div>



                          

                            <div class="form-group">
                                <label for="password">{{ __('voyager::generic.password') }}</label>
                                @if(isset($dataTypeContent->password))
                                    <br>
                                    <small>{{ __('voyager::profile.password_hint') }}</small>
                                @endif
                                <input type="password" class="form-control" id="password" name="password" value="" autocomplete="new-password">
                            </div>


                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="panel panel-bordered panel-warning">
                        <div class="panel-body">
                            <div class="form-group">
                                @if(isset($dataTypeContent->avatar))
                                    <img src="{{ filter_var($dataTypeContent->avatar, FILTER_VALIDATE_URL) ? $dataTypeContent->avatar : Voyager::image( $dataTypeContent->avatar ) }}" style="width:200px; height:auto; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:10px;" />
                                @endif
                                <input type="file" data-name="avatar" name="avatar">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary pull-right save">
                {{ __('voyager::generic.save') }}
            </button>
        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
        <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
            {{ csrf_field() }}
            <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
            <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
        </form>
    </div>
@stop

@section('javascript')
    <script>
        $('document').ready(function () {
            $('.toggleswitch').bootstrapToggle();
        });
    </script>
@stop
