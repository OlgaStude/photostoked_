<?php

use App\Http\Controllers\API\materialsController;
use App\Http\Controllers\API\userController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\filtrationController;
use App\Http\Controllers\mainPageController;
use App\Models\Subscription;
use App\Models\tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/testr', [Controller::class, 'testF']);


Route::post('/register', [userController::class, 'register']);
Route::post('/login', [UserController::class, 'login']);
Route::post('/logout', [UserController::class, 'logout']);
Route::get('/getuser/{id}', [UserController::class, 'get_user']);


Route::post('/sendingmaterial', [materialsController::class, 'send_for_approval']);
Route::get('/getinadmin', [materialsController::class, 'show_in_admin']);
Route::post('/delete', [materialsController::class, 'delete']);
Route::post('/approve', [materialsController::class, 'approve']);
Route::get('/maindata', [materialsController::class, 'show_in_main']);
Route::get('/maindatapopular', [materialsController::class, 'show_popular_in_main']);
Route::post('/like', [materialsController::class, 'like']);

Route::post('/moredata', [mainPageController::class, 'more_data']);
Route::post('/moredatauser', [mainPageController::class, 'more_user']);
Route::post('/moredataliked', [mainPageController::class, 'more_liked']);


Route::get('/tags', function () {
    $tags = tag::all();
    return $tags;
});
Route::get('/subcheck/{id}', function ($id) {
    $subscribed = Subscription::where([
        ['users_id', '=', Auth::user()->id], 
        ['followed_id', '=', $id]
    ])->exists();
    return $subscribed;
});


Route::post('/searchword', [filtrationController::class, 'wordSearch']);
Route::post('/filter', [filtrationController::class, 'filter']);


Route::post('/edit', [userController::class, 'updateData']);


Route::get('/usermaterials/{id}', [materialsController::class, 'show_users']);
Route::get('/userliked/{id}', [materialsController::class, 'show_liked']);


Route::post('/follow', [userController::class, 'follow']);
