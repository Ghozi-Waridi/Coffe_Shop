import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:project_prak_mobile/Domain/Entities/user.dart';

class UserModel extends User {
  UserModel({required String uid, required String email}) : super(uid: uid, email: email);

  factory UserModel.fromFirebaseUser(firebase.User user) {
    return UserModel(uid: user.uid, email: user.email!);
  }
}