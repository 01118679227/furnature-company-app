import 'package:flutter/material.dart';
import 'package:untitled8/model/order.dart';
import 'package:untitled8/screens/mabeaat/mabeaatHome.dart';
import 'package:untitled8/screens/operationUser/operationHome.dart';
import 'package:untitled8/services/store.dart';
class Distribution extends StatefulWidget {
  static String id = 'Distribution';

  @override
  _DistributionState createState() => _DistributionState();
}

class _DistributionState extends State<Distribution> {
  bool isTapped1,isTapped2 ,isTapped3,isTapped4 ,isTapped5 ,isTapped6,isTapped7,isTapped8= false;
  bool checkBoxValue1 = false;
  bool checkBoxValue2 = false;
  bool checkBoxValue3 = false;
  bool checkBoxValue4 = false;
  bool checkBoxValue5 = false;
  bool checkBoxValue6 = false;
  bool checkBoxValue7 = false;
  bool checkBoxValue8 = false;
  String str1 = '' ,str2 = '',str3 = '',str4 = '',str5 = '' ,str6 = '',str7 = '',str8 = '';
  final store = Store();
  final _globalKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/magalis.jpeg',
                  //scale: .8,
                  //fit: BoxFit.fitWidth,
                  filterQuality: FilterQuality.high,
                  height: 180.0 ,
                  width: 200.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Container(
                  height: 100.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                ),
              ),

              Form(
                key: _globalKey,
                child: Column(
                  children: <Widget>[
                    //########## Orders ########
                    Padding(
                      padding: EdgeInsets.only(top: 100.0,left: 10.0,right: 10.0,bottom: 20.0),
                      child: Container(
                        height: 70.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Add Distribution route',
                              style: TextStyle(
                                color: Colors.red.shade900,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //########## The City ########
                    Padding(
                      padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 20.0),
                      child: Container(
                        //height: 70.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Day',
                                      style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                      icon: isTapped1  == true ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down),
                                      onPressed: (){
                                        setState(() {
                                          isTapped1 = true;
                                        });
                                      }
                                  ),
                                ),
                              ],
                            ),
                            isTapped1 == true ? (Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Text(
                                          'Sunday 13.04.2020',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Checkbox(
                                        value: checkBoxValue1,
                                        onChanged: (value){
                                          setState(() {
                                            checkBoxValue1 = value;
                                          });
                                          if(checkBoxValue1 == true){
                                            str1 = 'Sunday 13.04.2020';
                                          }
                                        },
                                        activeColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Text(
                                          'Monday 14.04.2020',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Checkbox(
                                        value: checkBoxValue2,
                                        onChanged: (value){
                                          setState(() {
                                            checkBoxValue2 = value;
                                          });
                                          if(checkBoxValue2 == true){
                                            str2 = 'Monday 14.04.2020';
                                          }
                                        },
                                        activeColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Text(
                                          'Tuesday 15.04.2020',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Checkbox(
                                        value: checkBoxValue3,
                                        onChanged: (value){
                                          setState(() {
                                            checkBoxValue3 = value;
                                          });
                                          if(checkBoxValue3 == true){
                                            str3 = 'Tuesday 15.04.2020';
                                          }
                                        },
                                        activeColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Text(
                                          'Wednesday 16.04.2020',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Checkbox(
                                        value: checkBoxValue4,
                                        onChanged: (value){
                                          setState(() {
                                            checkBoxValue4 = value;
                                          });
                                          if(checkBoxValue4 == true){
                                            str4 = 'Wednesday 16.04.2020';
                                          }
                                        },
                                        activeColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )) : Column(children: <Widget>[],),
                          ],
                        ),
                      ),
                    ),
                    //########## The Line ########
                    Padding(
                      padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Person',
                                      style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                      icon: isTapped2  == true ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down),
                                      onPressed: (){
                                        setState(() {
                                          isTapped2 = true;
                                        });
                                      }
                                  ),
                                ),
                              ],
                            ),
                            isTapped2 == true ? (Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Text(
                                          'Mohamed Amr',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Checkbox(
                                        value: checkBoxValue5,
                                        onChanged: (value){
                                          setState(() {
                                            checkBoxValue5 = value;
                                          });
                                          if(checkBoxValue5 == true){
                                            str5 = 'Mohamed Amr';
                                          }
                                        },
                                        activeColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Text(
                                          'Saaed Ashraf',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Checkbox(
                                        value: checkBoxValue6,
                                        onChanged: (value){
                                          setState(() {
                                            checkBoxValue6 = value;
                                          });
                                          if(checkBoxValue6 == true){
                                            str5 = 'Saaed Ashraf';
                                          }
                                        },
                                        activeColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Text(
                                          'Tarek Ismail',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Checkbox(
                                        value: checkBoxValue7,
                                        onChanged: (value){
                                          setState(() {
                                            checkBoxValue7 = value;
                                          });
                                          if(checkBoxValue7 == true){
                                            str7 = 'Tarek Ismail';
                                          }

                                        },
                                        activeColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                        child: Text(
                                          'Samy Mahmoud',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Checkbox(
                                        value: checkBoxValue8,
                                        onChanged: (value){
                                          setState(() {
                                            checkBoxValue8 = value;
                                          });
                                          if(checkBoxValue8 == true){
                                            str8 = 'Samy Mahmoud';
                                          }
                                        },
                                        activeColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )) : Column(children: <Widget>[],),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .1,
                      child: Builder(
                        builder:(context)=> RaisedButton(
                          color: Colors.white,
                          child: Text('SUBMIT',style: TextStyle(color: Colors.red.shade900,fontWeight: FontWeight.bold),),
                          onPressed: () async{
                            if(_globalKey.currentState.validate()){
                              _globalKey.currentState.save();
                              try{
                                await store.addDistribution(Order(
                                  checkbox1: str1,
                                  checkbox2: str2,
                                  checkbox3: str3,
                                  checkbox4: str4,
                                  checkbox5: str5,
                                  checkbox6: str6,
                                  checkbox7: str7,
                                  checkbox8: str8,
                                ));
                                Scaffold.of(context).showSnackBar(SnackBar(content: Text('Success')));
                                Navigator.pushNamed(context, OperationHome.id);
                              }catch(e){
                                Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.message)));
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0,),
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
