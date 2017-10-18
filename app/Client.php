<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Clientcontact;
use Illuminate\Database\Eloquent\SoftDeletes;

class Client extends Model
{
	use SoftDeletes;


     public $fillable = ['id', 'first_name','last_name','email','enabled'];

     /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];


     public function clientcontact()
	  {
	    return $this->hasMany(clientcontact::class);
	  }

}
