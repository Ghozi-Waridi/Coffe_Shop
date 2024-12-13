import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> signIn(String email, String password);
  Future<User?> signUp(String email, String password);
  Future<void> saveToken(String token);
  Future<String?> getToken();
}
