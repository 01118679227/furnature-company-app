import 'package:flutter/material.dart';
import 'package:untitled8/login.dart';
import 'file:///C:/Users/pc/IdeaProjects/untitled8/lib/screens/mabeaat/edartelmabeat.dart';
import 'file:///C:/Users/pc/IdeaProjects/untitled8/lib/screens/startscreen.dart';
import 'package:untitled8/screens/mabeaat/mabeaatHome.dart';
import 'package:untitled8/screens/operationUser/distribution.dart';
import 'package:untitled8/screens/operationUser/operationHome.dart';
import 'package:untitled8/screens/splachScreen.dart';
import 'file:///C:/Users/pc/IdeaProjects/untitled8/lib/screens/mabeaat/newNotes.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplachScreen.id,
      routes: {
        SplachScreen.id: (context)=> SplachScreen(),
        StartScreen.id: (context)=> StartScreen(),
        Login.id: (context)=> Login(),
        EdartElmabeat.id: (context)=> EdartElmabeat(),
        MabeaatHome.id: (context)=> MabeaatHome(),
        NewNotes.id: (context)=> NewNotes(),
        OperationHome.id: (context)=> OperationHome(),
        Distribution .id: (context)=> Distribution(),
      },
    );
  }
}
