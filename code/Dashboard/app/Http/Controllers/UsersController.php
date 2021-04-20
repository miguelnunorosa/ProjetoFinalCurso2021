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
     *
     * @return view (users.index) with all information from get (query to database).
     */
    public function index(){
        $user = User::get();

        return view ('users.index', ['users' => $user]);
    }

    /**
     * Show all information from selected user (from list users and from logged user).
     *
     * @param $id (selected (or logged) user id)
     * @return view with all information
     */
    public function showUserDetails($id){   //TODO refactor this function
        $user = User::find($id);

        return view('users.userDetails');
    }


    /**
     * Save/register new user into database
     *
     * @param Request $request data from form
     * @return return to users list and show flash message if operation was success/failed
     */
    public function store(Request $request){   //TODO refactor and implement image
        $payload = $request->post();

        $date = new DateTime();
        $date->format('Y-m-d');


        $newUser = new User;
        $newUser->name = $payload['form_name'];
        $newUser->email = $payload['form_email'];
        $newUser->password = Hash::make($payload['form_password']);
        $newUser->created_at = $date;
        $newUser->photo = "img/users/default.png";     //default user photo   TODO REVER

        /*if( $request->hasFile('form_photo')) {
            $image = $request->file('form_photo');
            $path = public_path() . '/img/users/';
            $filename = time() . '.' . $image->getClientOriginalExtension();
            $image->move($path, $filename);

            $newUser->photo = $path;
        }*/


        $saveStatus = $newUser->save();
        if ($saveStatus == true){
            toastr()->success('Registo adicionado com sucesso.');
        } else {
            toastr()->error('Erro ao inserir o registo. Tente novamente.');
        }

        return redirect('/users');

    }







}
