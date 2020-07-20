import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/screens/mabeaat/mabeaatHome.dart';
import 'package:untitled8/screens/operationUser/operationHome.dart';
import 'package:untitled8/services/auth.dart';

class Login extends StatefulWidget {
  static String id="Login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChange = false;
  final  _globalKey = GlobalKey<FormState>();
  String _email,_password;
  final TextEditingController password=TextEditingController();
  final TextEditingController email=TextEditingController();
  String mPassword = 'm123456';
  String OPassword  = 'o1234567';
  String oEmail = 'operation@gmail.com';
  final auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('assets/magalis.jpeg',
                scale: .7,
                //fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
                height: MediaQuery.of(context).size.height *.8,
                width: MediaQuery.of(context).size.width,
              ),
              Form(
                key: _globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 330.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0,right: 65.0,bottom: 20.0),
                      child: Center(
                        child: TextFormField(
                          //controller: email,
                          //readOnly: true,
                          onSaved: (value){
                            _email = value;
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                                width: 2.0,
                              ),
                            ),
                            hintText: 'Email',
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: (value){
                            if(value.isEmpty){
                              return "Enter your Email";
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0,right: 65.0,bottom: 50.0),
                      child: Center(
                        child: TextFormField(
                          //controller: password,
                          onSaved: (value){
                            _password = value;
                          },
                          validator: (value){
                            if(value.isEmpty){
                              return "Enter your Password";
                            }
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                                width: 2.0,
                              ),
                            ),
                            hintText: 'Password',
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            filled: true,
                           prefixIcon: IconButton(
                             
                                 icon: isChange == true ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                             onPressed: (){
                             setState(() {
                               isChange = true;
                             });
                             },
                             ),
                          ),
                          obscureText: isChange ? false : true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0,right: 65.0),
                      child: Center(
                        child: Builder(
                          builder:(context)=> RaisedButton(
                            padding: EdgeInsets.only(left: 60.0,right: 60.0,top: 15.0,bottom: 15.0),
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.blueGrey,
                            child: Text('LOGIN',style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0
                            ),),
                            onPressed: () async{
                              if(_globalKey.currentState.validate()){
                                _globalKey.currentState.save();
                                if(   _email.trim() == 'mh345abd@gmail.com' && _password == '1234567'){
                                    try{
                                    await auth.SignIn(_email, _password);
                                    Navigator.pushNamed(context, OperationHome.id);
                                    }catch(e){
                                      Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.message)));
                                    }
                                }
                                else if( _email.trim() == 'mabeat@gmail.com' && _password == 'm123456'){
                                  try{
                                    await auth.SignIn(_email, _password);
                                    Navigator.pushNamed(context, MabeaatHome.id);
                                  }catch(e){
                                    Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.message)));
                                  }
                                }
                               else{
                                    Scaffold.of(context).showSnackBar(SnackBar(
                                        content: Text('Enter the true password and email !')),
                                    );
                                }
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60.0,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
