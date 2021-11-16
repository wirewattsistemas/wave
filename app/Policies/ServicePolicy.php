<?php

namespace App\Policies;

//use App\Service;
use TCG\Voyager\Policies\BasePolicy ;
use App\Contracts\Service;


use TCG\Voyager\Contracts\User;

class ServicePolicy extends BasePolicy
{

    public function read(User $user, $model)
    {

        //dd($user->hasRole('Extranjero'));

        // Does this record belong to the current user?
        //$current = $user->id === $model->id;
        //dump($model);
       // dump($user);
        //dd($this->checkPermission($user, $model, 'read'));


        return true;
    }

   
}
