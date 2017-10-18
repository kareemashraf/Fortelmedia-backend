Fortelmedia-backend

API DOC: 

-Route::get('clients', 'ClientController@index');    // Read

-Route::post('clients', 'ClientController@store'); //create

-Route::put('clients/{client}', 'ClientController@update'); //Udate

-Route::delete('clients/{client}', 'ClientController@delete'); //Delete

instructions:
- clone the repo.
- open the terminal and run `$ php artisan serve`
- run `$ php artisan migrate` for db migration
- now test by accessing  `http://localhost:8000/api/clients/`

TO DO:

(the following bullet points is something to be done later for better usage but couldn't make it at the moment with the current time frame)

- pagination

- authentication login based

- DB seeders
