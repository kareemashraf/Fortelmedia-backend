<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Client;
use App\Clientcontact;

class ClientController extends Controller
{
   public function index()
    { 
         return Client::with('Clientcontact')->get(); //to show all the values from the 2 tables, all(); will show only from Client
    }

    public function show(Client $client)
    { 
        return $client;
    }

    public function store(Request $request)
    {
        $client = Client::create($request->all());
        $full   = array_merge($request->all() , ['client_id'=> $client->id] );   //might not be the best way of inserting to OneToMany
        Clientcontact::create($full); 
        return response()->json($client, 201);   //201: Object created. Useful for the store actions to create new fields 
    }

    public function update(Request $request, Client $client)
    {
        $client->update($request->all());

        return response()->json($client, 200);    // 200: OK. The standard success code and default option.
    }

    public function delete(Client $client)
    {
        $client->delete();

        return response()->json(null, 204);  //204: No content. When an action was executed successfully, but there is no content to return.
    }

}
