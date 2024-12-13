import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class FirebaseAuthDataSource {
  Future<User?> signInWithEmailAndPassword(String email, String password);
  Future<User?> signUpWithEmailAndPassword(String email, String password);
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> logoutUser();
}

class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthDataSourceImpl({required this.firebaseAuth});

  @override
  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await saveToken(userCredential.user!.uid);
      return userCredential.user;
    } catch (e) {
      throw Exception("Error signing in: ${e.toString()}");
    }
  }

  @override
  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await saveToken(userCredential.user!.uid);
      return userCredential.user;
    } catch (e) {
      throw Exception("Error signing up: ${e.toString()}");
    }
  }

  @override
  Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userToken', token);
  }

  @override
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('userToken');
  }

  @override
  Future<void> logoutUser() async {
    await firebaseAuth.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}