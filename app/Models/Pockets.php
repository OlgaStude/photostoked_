<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pockets extends Model
{
    use HasFactory;

    protected $fillable = [
        'users_id',
        'purchases_left'
    ];
}
