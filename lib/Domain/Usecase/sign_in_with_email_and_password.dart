import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_prak_mobile/Domain/Repositories/auth_repository.dart';

class SignInWithEmailAndPassword {
  final AuthRepository authRepository;

  SignInWithEmailAndPassword(this.authRepository);

  Future<User?> call(String email, String password) {
    return authRepository.signIn(email, password);
  }
}
