<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Models\User;
use App\Models\Country;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$results = User::with(['country'])->where('is_deleted',0)->orderBy('id','DESC')->paginate(10);	
        return view('users.index',compact('results'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
		$country = Country::where('is_deleted',0)->get();
        return view('users.create',compact('country'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), 
			[            
				'first_name' => 'required|max:50|alpha',
				'last_name' => 'required|max:50|alpha',
				'email' => 'required|max:50|email|unique:users',
				'password' => 'required|min:6|max:20',
				'confirm_password' => 'required_with:password|same:password|min:6|max:20', 
				'country_id' => 'required',
				'state' => 'required|max:50',
				'city' => 'required|max:50',
				'terms_condition' => 'required',
			]
		);
		
		if ($validator->fails()) { 
			$messages = $validator->messages();
            //return redirect()->back()->with('error',$messages->first());	
            return redirect()->back()->withInput($request->all())->with('error',$messages->first());
		}			
		
		$user = new User([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'password' => hash('sha256',$request->password),
            'country_id' => $request->country_id,
            'state' => $request->state,
            'city' => $request->city,
            'terms_condition' => $request->terms_condition,
            'created_at' => date("Y-m-d h:i:s"),
            'created_by' => 1
        ]);	

		if($user->save()){
            return redirect('/')->with('success','User created successfully!');
		}else{
            return redirect()->back()->withInput($request->all())->with('error','Please try again later!');
		}	
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $country = Country::where('is_deleted',0)->get();
		$result = User::find($id);
		return view('users/edit',compact('country','result'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), 
			[            
				'first_name' => 'required|max:50|alpha',
				'last_name' => 'required|max:50|alpha',
                'email' => 'required|max:50|email|unique:users,email,'.$request->id,  
				'password' => 'nullable|min:6|max:20',
				'confirm_password' => 'nullable|required_with:password|same:password|min:6|max:20', 
				'country_id' => 'required',
				'state' => 'required|max:50',
				'city' => 'required|max:50',
				'terms_condition' => 'required',
			]
		);
		
		if ($validator->fails()) { 
			$messages = $validator->messages();
            //return redirect()->back()->with('error',$messages->first());	
            return redirect()->back()->withInput($request->all())->with('error',$messages->first());
		}			
		
        $userData = array(
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'country_id' => $request->country_id,
            'state' => $request->state,
            'city' => $request->city,
            'terms_condition' => $request->terms_condition,
            'updated_at' => date("Y-m-d h:i:s"),
            'updated_by' => 1
        );

        $password = $request->password;
        if(!empty($password)){
            $userData['password'] = hash('sha256',$request->password);				
        }	

		$user = User::where('id',$id)->update($userData);	
		if($user){
            return redirect('/')->with('success','User updated successfully!');
		}else{
            return redirect()->back()->withInput($request->all())->with('error','Please try again later!');
		}	
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {				
        $userData = array(
            'updated_at' => date("Y-m-d h:i:s"),
            'updated_by' => 1,
            'is_deleted' => 1
        );

		$user = User::where('id',$id)->update($userData);	
		if($user){
            return redirect('/')->with('success','User deleted successfully!');
		}else{
            return redirect()->back()->withInput($request->all())->with('error','Please try again later!');
		}	
    }
}
