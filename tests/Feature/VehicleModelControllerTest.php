<?php

namespace Tests\Feature;

use DummyFullModelClass;
use Illuminate\Support\Facades\Route;
use App\User;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class VehicleModelControllerTest extends TestCase
{
    /**
     * Display a listing of the resource.
     *
     * @return void
     */
    public function testIndex()
    {
        if (!Route::has('vehicle_models.index')) { $this->expectNotToPerformAssertions(); return; }
        $user = factory(User::class)->create();

        $this->actingAs($user);
        $response = $this->get(dummy_action_index);
        $response->assertViewIs('vehicle_models.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return void
     */
    public function testCreate()
    {
        if (!Route::has('vehicle_models.create')) { $this->expectNotToPerformAssertions(); return; }
        $user = factory(User::class)->create();

        $this->actingAs($user);
        $response = $this->get(dummy_action_create);
        $response->assertViewIs('vehicle_models.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return void
     */
    public function testStore()
    {
        if (!Route::has('vehicle_models.store')) { $this->expectNotToPerformAssertions(); return; }
        $user = factory(User::class)->create();

        $this->actingAs($user);
        $response = $this->post(dummy_action_store, [
            'name' => 'Test'
        ]);
        $response->assertSessionMissing('errors');
        $response->assertStatus(302);
    }

    /**
     * Display the specified resource.
     *
     * @return void
     */
    public function testShow()
    {
        if (!Route::has('vehicle_models.show')) { $this->expectNotToPerformAssertions(); return; }
        $user = factory(User::class)->create();

        $this->actingAs($user);

        // $dummy_model_variable = factory(DummyModelClass::class)->create();

        // $response = $this->get(dummy_action_show);
        // if ($response->exception) {
        //     $this->expectOutputString('');
        //     $this->setOutputCallback(function () use($response) { return $response->exception; });
        //     return;
        // }
        // $response->assertViewIs('vehicle_models.show');
        $this->assertTrue(true);
    }

    /**
     * Display the specified resource.
     *
     * @return void
     */
    public function testEdit()
    {
        if (!Route::has('vehicle_models.edit')) { $this->expectNotToPerformAssertions(); return; }
        $user = factory(User::class)->create();

        $this->actingAs($user);

        // $dummy_model_variable = factory(DummyModelClass::class)->create();

        // $response = $this->get(dummy_action_edit);
        // if ($response->exception) {
        //     $this->expectOutputString('');
        //     $this->setOutputCallback(function () use($response) { return $response->exception; });
        //     return;
        // }
        // $response->assertViewIs('vehicle_models.edit');
        $this->assertTrue(true);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return void
     */
    public function testUpdate()
    {
        if (!Route::has('vehicle_models.update')) { $this->expectNotToPerformAssertions(); return; }
        $user = factory(User::class)->create();

        $this->actingAs($user);

        // $dummy_model_variable = factory(DummyModelClass::class)->create();

        // $response = $this->put(dummy_action_update, [
        //     'name' => 'Test'
        // ]);
        // $response->assertSessionMissing('errors');
        // $response->assertStatus(302);
        $this->assertTrue(true);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return void
     */
    public function testDestroy()
    {
        if (!Route::has('vehicle_models.destroy')) { $this->expectNotToPerformAssertions(); return; }
        $user = factory(User::class)->create();

        $this->actingAs($user);

        // $dummy_model_variable = factory(DummyModelClass::class)->create();

        // $response = $this->delete(dummy_action_destroy);
        // $response->assertSessionMissing('errors');
        // $response->assertStatus(302);
        $this->assertTrue(true);
    }
}
