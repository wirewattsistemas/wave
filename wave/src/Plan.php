<?php

namespace Wave;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Models\Role;
use Illuminate\Support\Str;
use App\Servicio;

class Plan extends Model
{
    protected $appends = ['servicios'];

    public static function boot()
    {
        parent::boot();

        self::creating(function($model){
            $model->slug = Str::lower(Str::slug($model->name));
        });
    }

    public function role() {
        return $this->belongsTo(Role::class);
    }

  
    public function serviciosList() {
        return $this->hasMany(Servicio::class);
    }

 
    public function getServiciosAttribute() {
        return $this->serviciosList;
    }
}
