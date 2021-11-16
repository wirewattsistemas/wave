<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Accion;


class Proveedor extends Model
{

    protected $table = 'proveedores';

    protected $appends = ['acciones'];


    public function accionesList() {
        return $this->hasMany(Accion::class);
    }

    public function getAccionesAttribute() {
        return $this->accionesList;
    }

}
