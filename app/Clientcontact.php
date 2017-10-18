<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Client;

class Clientcontact extends Model
{
    protected $fillable = ['id', 'client_id','address','post_code'];


     public function client()
  {
    return $this->belongsTo(Client::class);
  }
}
