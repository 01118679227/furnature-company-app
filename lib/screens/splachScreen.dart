import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/screens/startscreen.dart';

class SplachScreen extends StatefulWidget {
  static String id="SplachScreen";
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushNamed(context, StartScreen.id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('assets/magalis.jpeg',
                //scale: .7,
                //fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
