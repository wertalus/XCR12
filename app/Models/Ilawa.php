<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ilawa extends Model
{
    use HasFactory;
    protected $table = 'ilawa';
    protected $fillable=['model_name', 'quantity','status','week_number'];
}
