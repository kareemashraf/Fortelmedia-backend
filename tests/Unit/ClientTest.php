<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ClientTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testExample()
    {
        $this->assertTrue(true);
    }


 public function testsClientsAreCreatedCorrectly()
    {
        $payload = [
            'first_name' => 'Lorem',
            'last_name' => 'Ipsum',
            'email' => 'Lorem@Ipsum.nvm'
        ];

        $this->json('POST', '/api/clients', $payload)
            ->assertStatus(200)
            ->assertJson(['id' => 100,
            'first_name' => 'Lorem',
            'last_name' => 'Ipsum',
            'email' => 'Lorem@Ipsum.nvm'
        ]);
    }


     public function testsClientsAreDeletedCorrectly()
    {
        $client = factory(Client::class)->create([
            'first_name' => 'Lorem',
            'last_name' => 'Ipsum',
            'email' => 'Lorem@Ipsum.nvm'
        ]);

        $this->json('DELETE', '/api/client/' . $client->id, [])
            ->assertStatus(204);
    }


}
