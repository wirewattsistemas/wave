<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use \Storage;
use TCG\Voyager\Models\Role;

class Miembro extends Model 
{


     /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    public function role() {
        return $this->belongsTo(Role::class);
    }



}
