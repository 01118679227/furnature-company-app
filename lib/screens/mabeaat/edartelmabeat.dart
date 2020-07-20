import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/model/order.dart';
import 'package:untitled8/screens/mabeaat/mabeaatHome.dart';
import 'package:untitled8/services/store.dart';
class EdartElmabeat extends StatefulWidget {
  static String id = 'EdartElmabeat';

  @override
  _EdartElmabeatState createState() => _EdartElmabeatState();
}

class _EdartElmabeatState extends State<EdartElmabeat> {
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

  TextEditingController _quantity,_name,_phoneNumber,_address , _description,_note ,_amount,_downPayment;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _quantity = TextEditingController();
    _name = TextEditingController();
    _note = TextEditingController();
    _phoneNumber = TextEditingController();
    _downPayment = TextEditingController();
    _description = TextEditingController();
    _amount = TextEditingController();
    _address= TextEditingController();
  }
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
                    //########## The New Order ########
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
                              'New Order',
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
                                      'City',
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
                                          'Cairo',
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
                                             str1 = 'Cairo';
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
                                          'Alexandria',
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
                                            str2 = 'Alexandria';
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
                                          'Fayoum',
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
                                            str3 = 'Fayoum';
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
                                          'Marsa Matrouh',
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
                                            str4 = 'Marsa Matrouh';
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
                                      'Line',
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
                                          'Bean Bags',
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
                                            str5 = 'Bean Bags';
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
                                          'Rattan',
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
                                            str5 = 'Rattan';
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
                                          'Alternative Seating',
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
                                             str7 = 'Alternative Seating';
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
                                          'Travel Accessories',
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
                                            str8 = 'Travel Accessories';
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
                    //########## The Quantity ########
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
                                      'Quantity',
                                      style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13.0),
                                      ),
                                      color: Colors.red.shade900,
                                        child: Text('DONE',style: TextStyle(color: Colors.white),),
                                        onPressed: (){
                                          setState(() {
                                            isTapped3 = true;
                                          });
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            isTapped3 == true ? (Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                    controller: _quantity,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: 'Write here....',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade300,

                                      ),
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Quantity";
                                      }
                                    },
                                  ),
                                ),
                              ],
                            )) : Column(children: <Widget>[],),
                          ],
                        ),
                      ),
                    ),
                    //########## The Customer Data ########
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
                                      'Customer data',
                                      style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.0),
                                        ),
                                        color: Colors.red.shade900,
                                        child: Text('DONE',style: TextStyle(color: Colors.white),),
                                        onPressed: (){
                                          setState(() {
                                            isTapped4 = true;
                                          });
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            isTapped4 == true ? (Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                  controller: _name,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: 'Name',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade300,

                                      ),
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Name";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                   controller: _phoneNumber,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: 'Mobil Number',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade300,

                                      ),
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Mobil Number";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                   controller: _address,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: 'Address',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade300,

                                      ),
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Address";
                                      }
                                    },
                                  ),
                                ),
                              ],
                            )) : Column(children: <Widget>[],),
                          ],
                        ),
                      ),
                    ),
                    //########## The Description ########
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
                                      'Description',
                                      style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.0),
                                        ),
                                        color: Colors.red.shade900,
                                        child: Text('DONE',style: TextStyle(color: Colors.white),),
                                        onPressed: (){
                                          setState(() {
                                            isTapped5 = true;
                                          });
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            isTapped5 == true ? (Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                    controller: _description,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: 'Write here....',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade300,

                                      ),
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Quantity";
                                      }
                                    },
                                  ),
                                ),
                              ],
                            )) : Column(children: <Widget>[],),
                          ],
                        ),
                      ),
                    ),
                    //########## The Note ########
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
                                      'Note',
                                      style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.0),
                                        ),
                                        color: Colors.red.shade900,
                                        child: Text('DONE',style: TextStyle(color: Colors.white),),
                                        onPressed: (){
                                          setState(() {
                                            isTapped6 = true;
                                          });
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            isTapped6 == true ? (Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                   controller: _note,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: 'Write here....',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade300,

                                      ),
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Quantity";
                                      }
                                    },
                                  ),
                                ),
                              ],
                            )) : Column(children: <Widget>[],),
                          ],
                        ),
                      ),
                    ),
                    //########## The Amount ########
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
                                      'Amount',
                                      style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.0),
                                        ),
                                        color: Colors.red.shade900,
                                        child: Text('DONE',style: TextStyle(color: Colors.white),),
                                        onPressed: (){
                                          setState(() {
                                            isTapped7 = true;
                                          });
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            isTapped7 == true ? (Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                   controller: _amount,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: 'Write here....',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade300,

                                      ),
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Amount";
                                      }
                                    },
                                  ),
                                ),
                              ],
                            )) : Column(children: <Widget>[],),
                          ],
                        ),
                      ),
                    ),
                    //########## The Down payment ########
                    Padding (
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
                                      'Down payment',
                                      style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.0),
                                        ),
                                        color: Colors.red.shade900,
                                        child: Text('DONE',style: TextStyle(color: Colors.white),),
                                        onPressed: (){
                                          setState(() {
                                            isTapped8 = true;
                                          });
                                        }
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            isTapped8 == true ? (Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                      child: Text('2124 EGP',
                                      style:TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                        fontSize: 16.0
                                      ),
                                      ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                    controller: _downPayment,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: 'Write here....',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade300,

                                      ),
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Down Amount";
                                      }
                                    },
                                  ),
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
                          _addToDatabase(
                            _name.text,
                            _downPayment.text,
                            _amount.text,
                            _note.text,
                            _description.text,
                            _address.text,
                            _phoneNumber.text,
                            _quantity.text,
                            str1,
                            str2,
                            str3,
                            str4,
                            str5,
                            str6,
                            str7,
                            str8,
                          );
                            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Success')));
                            Navigator.pushNamed(context, MabeaatHome.id);
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

  void _addToDatabase(String name, String downPayment, String amount, String note,
      String description, String address, String phone, String quantity, String checkbox1,String checkbox2,
      String checkbox3,String checkbox4,String checkbox5,String checkbox6,String checkbox7,String checkbox8
      ) {
    List<String> splitList = name.split(" ");
    List<String> indexList = [];

    for(int i = 0 ; i < splitList.length; i++){
      for(int y = 1 ; y < splitList[i].length + 1; y++){
        indexList.add(splitList[i].substring(0,y).toLowerCase());
      }
    }
    print(indexList);
    Firestore.instance.collection('Order').add({
      'quantity': quantity,
      'name': name,
      'searchIndex': indexList,
      'phoneNumber': phone,
      'address': address,
      'description': description,
      'note': note,
      'amount': amount,
      'downPayment':downPayment,
      'checkBox1': checkbox1,
      'checkBox2': checkbox2,
      'checkBox3': checkbox3,
      'checkBox4': checkbox4,
      'checkBox5': checkbox5,
      'checkBox6': checkbox6,
      'checkBox7': checkbox7,
      'checkBox8': checkbox8,
    });
  }
}
