<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;

class editRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules()
    {
        return [
            'email' => 'unique:users,email,' . Auth::user()->id,
            'birthdate' => 'before:-14 years',
            'name' => 'alpha:ascii| max: 60',
            'surname' => 'alpha:ascii| max: 60',
            'pfp' => 'mimes:jpeg,png,jpg',
        ];
    }

    public function messages()
    {
        return [
            'email.email' => 'E-mail был введён некорректно',
            'email.unique' => 'Этот E-mail уже занят',
            'nikname.unique' => 'Этот ник уже занят',
            'name.alpha' => 'Имя можно писать только буквами',
            'name.max' => 'Превышен лимит 60 символов',
            'surname.alpha' => 'Фамилию можно писать только буквами',
            'surname.max' => 'Превышен лимит 60 символов',
            'pfp.mimes' => 'Загружать можно только в форматах jpeg, png, jpg',
            'birthdate.before' => 'Вы должны быть старше 14 лет',
        ];
    }
}
