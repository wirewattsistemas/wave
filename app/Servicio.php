<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Wave\Plan;
use App\Caracteristica;


class Servicio extends Model
{
    
    protected $appends = ['caracteristicas'];

    public function plan() {
        return $this->belongsTo(Plan::class);
    }


    public function caracteristicasList() {
        return $this->hasMany(Caracteristica::class);
    }

 

    public function getCaracteristicasAttribute() {
        return $this->caracteristicasList;
    }
 

}
