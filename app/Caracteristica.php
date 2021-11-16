<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Servicio;
use App\Proveedor;
use App\Caracteristica;


class Caracteristica extends Model
{
    
    protected $appends = ['acciones'];


    public function servicio() {
        return $this->belongsTo(Servicio::class);
    }



    public function proveedor() {
        return $this->belongsTo(Proveedor::class);
    }
    

    public function getAccionesAttribute() {
        return $this->proveedor->acciones;
    }


 

 

}
