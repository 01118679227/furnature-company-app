import 'package:flutter/material.dart';
import 'package:untitled8/model/order.dart';
import 'package:untitled8/screens/mabeaat/mabeaatHome.dart';
import 'package:untitled8/services/store.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class NewNotes extends StatefulWidget {
  static String id = 'NewNotes';
  @override
  _NewNotesState createState() => _NewNotesState();
}

class _NewNotesState extends State<NewNotes> {
  FlutterLocalNotificationsPlugin f;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    f = FlutterLocalNotificationsPlugin();
    var android = AndroidInitializationSettings('app_icon');
    var ios = IOSInitializationSettings();
    var initSettings = new InitializationSettings(android, ios);
    f.initialize(initSettings,onSelectNotification: selectNotification);
  }
  Future<dynamic> selectNotification(String payLoad){
  print('Hello');
  }
  void showNotification(){
    var android = AndroidNotificationDetails("channelId", "channelName", "channelDescription",
      priority: Priority.High,
      color: Colors.red,
    );
    var ios = IOSNotificationDetails();
    var platForm =new NotificationDetails(android, ios);
    f.show(0, 'Hello!', 'You sent new Notes', platForm,payload: 'Send Message');
  }
  final store = Store();
  final _globalKey= GlobalKey<FormState>();
  String _note;
  @override
  Widget build(BuildContext context) {
    Order order= ModalRoute.of(context).settings.arguments;
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
                              'New Note',
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
                                    padding: const EdgeInsets.only(left: 10.0,top: 10.0),
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

                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                  child: Divider(thickness: 1.5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                    onSaved: (value){
                                      _note = value;
                                    },
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
                            ),
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
                          child: Text('ADD',style: TextStyle(color: Colors.red.shade900,fontWeight: FontWeight.bold),),
                          onPressed: () async{
                            try{
                              await store.editOrders({
                                'note': _note,
                              }, order.pId);
                              showNotification();
                              Navigator.pushNamed(context, MabeaatHome.id);
                            }catch(e){
                              Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.message)));
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
