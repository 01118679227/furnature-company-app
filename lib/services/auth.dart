import 'package:firebase_auth/firebase_auth.dart';
class Auth{
  final _auth = FirebaseAuth.instance;
  Future<AuthResult> SignIn(String email,String password) async{
    final authResult = await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
    );
    return authResult;
  }
}