import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance; // memanggil class firebaseAuth untuk melakukan operation autentikasi di firebase

  Future singInAnm() async {
    // print("User berhasul LOgin ");
    // future itu harus  menggunankan async 
    try {

      UserCredential userCredential = await _auth.signInAnonymously();
      User? user = userCredential.user; 
      return user;
    } catch (e) {
      return "Eror => " + e.toString();
    }
  }
}
