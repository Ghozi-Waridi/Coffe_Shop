import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_prak_mobile/Data/DataSource/firebase/firebase_auth_data_source.dart';
import 'package:project_prak_mobile/Domain/Repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthDataSource firebaseAuthDataSource;

  AuthRepositoryImpl(this.firebaseAuthDataSource);

  @override
  Future<User?> signIn(String email, String password) {
    return firebaseAuthDataSource.signInWithEmailAndPassword(email, password);
  }

  @override
  Future<User?> signUp(String email, String password) {
    return firebaseAuthDataSource.signUpWithEmailAndPassword(email, password);
  }
  
  @override
  Future<String?> getToken() {
    return firebaseAuthDataSource.getToken();
  }
  
  @override
  Future<void> saveToken(String token) {
    return firebaseAuthDataSource.saveToken(token);
  }

  
}
