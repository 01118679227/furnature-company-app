import 'package:flutter/material.dart';
import 'package:untitled8/login.dart';
class StartScreen extends StatelessWidget {
  static String id="StartScreen";
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 360.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0,right: 65.0),
                      child: Center(
                        child: RaisedButton(
                          padding: EdgeInsets.only(left: 60.0,right: 60.0,top: 15.0,bottom: 15.0),
                          splashColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.blueGrey,
                              width: 2.0,
                            ),
                          ),
                          color: Colors.white,
                          child: Text('SIGN IN',style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 17.0
                          ),),
                            onPressed: (){
                              Navigator.pushNamed(context, Login.id);
                            },
                        ),
                      ),
                    ),
                    SizedBox(height: 60.0,),
                  ],
                ),
              ],
            ),
          ],
        ),
    );
  }
}
