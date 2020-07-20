import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/model/order.dart';
import 'package:untitled8/model/order.dart';
import 'package:untitled8/screens/mabeaat/edartelmabeat.dart';
import 'file:///C:/Users/pc/IdeaProjects/untitled8/lib/screens/mabeaat/newNotes.dart';
import 'package:untitled8/services/store.dart';
import 'package:untitled8/widget/custommenu.dart';

class MabeaatHome extends StatefulWidget {
  static String id = 'MabeaatHome';

  @override
  _MabeaatHomeState createState() => _MabeaatHomeState();
}

class _MabeaatHomeState extends State<MabeaatHome> {
  final store = Store();
  String seachString;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[

          Row(
            children: <Widget>[
              //######### SearchBar ############
              Padding(
                padding: const EdgeInsets.only(right: 10.0,top: 5.0,bottom: 10.0),
                child: Container(
                  color: Colors.white,
                    width: MediaQuery.of(context).size.width * .7,
                  height: 100.0,
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                        seachString = value.toLowerCase();
                      });
                    },
                    textDirection: TextDirection.ltr,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.6,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.6,
                        ),
                      ),
                      hintText: 'Search',
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              //######### AddButton ############
              Padding(
                padding: const EdgeInsets.only(right: 10.0,left: 10.0,top: 5.0,bottom: 10.0),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * .15,
                  height: 100.0,
                  child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        width: 1.3,
                        color: Colors.grey
                      ),
                    ),
                      child: Center(child: Icon(Icons.add,size: 19.0,color: Colors.black,)),
                    onPressed: (){
                      Navigator.pushNamed(context, EdartElmabeat.id);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0,left: 17.0,right: 17.0),
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Orders',
                        style: TextStyle(
                          color: Colors.red.shade900,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.filter_list), onPressed: (){}),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: StreamBuilder<QuerySnapshot>(
                  stream: (seachString == null || seachString.trim() == "") ?
                  Firestore.instance.collection('Order').snapshots() :
                  Firestore.instance.collection('Order').where("searchIndex", arrayContains: seachString).snapshots(),
                    builder: (context,snapShot){
                    if(snapShot.hasData){
                      List<Order> order = [];
                      for(var doc in snapShot.data.documents){
                        var data = doc.data;
                        order.add(Order(
                          pId: doc.documentID,
                          quantity:    data['quantity'],
                          name:        data['name'],
                          address:     data['address'],
                          description: data['description'],
                          note:        data['note'],
                          amount:      data['amount'],
                          phoneNumber: data['phoneNumber'],
                          downPayment: data['downPayment'],
                          checkbox1:   data['checkBox1'],
                          checkbox2:   data['checkBox2'],
                          checkbox3:   data['checkBox3'],
                          checkbox4:   data['checkBox4'],
                          checkbox5:   data['checkBox5'],

                        ));
                      }
                      return ListView.builder(
                        itemCount: order.length,
                        itemBuilder: (context,index) => GestureDetector(
                          onTapUp: (details) async {
                            double dx = details.globalPosition.dx;
                            double dy = details.globalPosition.dy;
                            double dx2 = MediaQuery.of(context).size.width - dx;
                            double dy2 = MediaQuery.of(context).size.width - dy;
                            await showMenu(
                                context: context,
                                position: RelativeRect.fromLTRB(dx, dy, dx2, dy2),
                                items: [
                                  MyPopupMenuItem(
                                    onClick: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(context, NewNotes.id,
                                          arguments: order[index]);
                                    },
                                    child: Text('Add New Notes'),
                                  ),
                                ]);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
                              child: Container(
                                // height: 0.0,
                                padding: EdgeInsets.only(top: 17.0, left: 10.0, right: 15.0, bottom: 10.0),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10.0),
                                            child: Text(
                                              order[index].name,
                                              style: TextStyle(
                                                color: Colors.red.shade900,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(order[index].downPayment + ' EGP',
                                          style: TextStyle(
                                            color: Colors.teal.shade900,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left: 9.0,top: 10.0),
                                          child: Align(
                                            child: Text(
                                              order[index].address,
                                              style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            alignment: Alignment.centerLeft,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                                child: Text(
                                                  comparison(order[index]),
                                                  style: TextStyle(
                                                    color: Colors.grey.shade400,
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 2.0,
                                              height: 15.0,
                                              color: Colors.red,
                                            ),
                                            Text(order[index].address,
                                              style: TextStyle(
                                                color: Colors.teal.shade900,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ),

                      );
                    }else{
                      return Center(child: Text('Loading...'));
                    }
                    },
                ),
          ),
        ],
      ),

    );
  }

  String comparison(Order order) {
    if(order.checkbox1 != null && order.checkbox2 != null&& order.checkbox3 != null&& order.checkbox4 != null){
      return (order.checkbox1) +' '+ ( order.checkbox2) +' '+ (order.checkbox3) +' '+ ( order.checkbox4);
    }else{
      return order.checkbox4;
    }
  }
}
