<?php

namespace App\Http\Resources;

use App\Models\like;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Auth;

class materialsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $liked = false;

        if (Auth::user()) {
            $test = like::where([
                ['approved_materials_id', '=', $this->id],
                ['users_id', '=', Auth::user()->id]
            ])->get();


            if (isset($test[0])) {
                $liked = true;
            } else {
                $liked = false;
            }
        }

        return [
            'material_id' => $this->id,
            'material_path' => $this->path,
            'user_id' => User::find($this->users_id)->id,
            'user_path' => User::find($this->users_id)->path,
            'nikname' => User::find($this->users_id)->nikname,
            'likes' => $this->likes,
            'is_liked' => $liked,
            'tags' => $this->tags,
            'type' => $this->type,
            'format' => $this->format,
        ];;
    }
}
