import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled8/model/order.dart';
class Store{
  final _storage = Firestore.instance;
  addDataCheckBox(Order order){
    Firestore.instance.collection('Order').add({
      'checkBox1': order.checkbox1,
      'checkBox2': order.checkbox2,
      'checkBox3': order.checkbox3,
      'checkBox4': order.checkbox4,
      'checkBox5': order.checkbox5,
      'checkBox6': order.checkbox6,
      'checkBox7': order.checkbox7,
      'checkBox8': order.checkbox8,
      'quantity': order.quantity,
      'name': order.name,
      'phoneNumber': order.phoneNumber,
      'address': order.address,
      'description': order.description,
      'note': order.note,
      'amount':order.amount,
      'downPayment':order.downPayment,
    });
  }
  addDistribution(Order order){
    _storage.collection('Distribution').add({
      'checkBox1': order.checkbox1,
      'checkBox2': order.checkbox2,
      'checkBox3': order.checkbox3,
      'checkBox4': order.checkbox4,
      'checkBox5': order.checkbox5,
      'checkBox6': order.checkbox6,
      'checkBox7': order.checkbox7,
      'checkBox8': order.checkbox8,
    });
  }
  Stream loadAllOrders() {
    return _storage.collection('Order').snapshots();
  }
  editOrders(data,documentId) {
     _storage.collection('Orders').document(documentId).updateData(data);
  }
}