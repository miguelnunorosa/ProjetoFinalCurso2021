<?php

namespace App\Http\Controllers;

use DateTime;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;



class UsersController extends Controller
{

    private $validator = [
        'name' => ['required', 'string', 'max:255'],
        'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
        'password' => ['required', 'string', 'min:8', 'confirmed']
    ];


    /**
     * Function to list all system users
     */
    public function index(){
        $user = User::get();

        return view ('users.index', ['users' => $user]);
    }



    public function store(Request $request){
        $payload = $request->post();

        $date = new DateTime();
        $date->format('Y-m-d');


        $newUser = new User;
        $newUser->name = $payload['form_name'];
        $newUser->email = $payload['form_email'];
        $newUser->password = Hash::make($payload['form_password']);
        $newUser->created_at = $date;
        $newUser->photo = "img/users/default.png"; //default user photo   TODO REVER



        $saveStatus = $newUser->save();
        if ($saveStatus == true){
            toastr()->success('Registo adicionado com sucesso.');
        } else {
            toastr()->error('Erro ao inserir o registo. Tente novamente.');
        }

        return redirect('/users');

    }







}
