import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Data/DataSource/firebase/firebase_auth_data_source.dart';
import 'package:project_prak_mobile/Data/Repositories/auth_repository_impl.dart';
import 'package:project_prak_mobile/Domain/Repositories/auth_repository.dart';
import 'package:project_prak_mobile/Domain/Usecase/SignUpWithEmailAndPassword.dart';
import 'package:project_prak_mobile/Domain/Usecase/sign_in_with_email_and_password.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/Button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Colors.dart' as cl;
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late SignInWithEmailAndPassword _signInWithEmailAndPassword;
  late SignUpWithEmailAndPassword _signUpWithEmailAndPassword;
  late FirebaseAuthDataSource _firebaseAuthDataSource;
  bool _isLoginForm = true;

  void _showForm() {
    setState(() {
      _isLoginForm = !_isLoginForm;
    });
  }

  @override
  void initState() {
    super.initState();
    final firebaseAuthDataSource =
        FirebaseAuthDataSourceImpl(firebaseAuth: FirebaseAuth.instance);
    final authRepository = AuthRepositoryImpl(firebaseAuthDataSource);

    _signInWithEmailAndPassword = SignInWithEmailAndPassword(authRepository);
    _signUpWithEmailAndPassword = SignUpWithEmailAndPassword(authRepository);

    _checkLoginStatus(); // Tambahkan pengecekan login status di sini
  }

void _checkLoginStatus() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacementNamed(context, "/Home");
    });
  } else {
    print("User is not logged in.");
  }
}


  void _signIn() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _showErrorDialog("Email dan Password harus diisi");
      return;
    }

    try {
      final user = await _signInWithEmailAndPassword(email, password);
      if (user != null) {
        Navigator.pushReplacementNamed(context, "/Home");
      }
    } catch (e) {
      _showErrorDialog("Email atau Password salah: ${e.toString()}");
    }
  }

  void _signUp() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      _showErrorDialog("Email dan Password tidak boleh kosong.");
      return;
    }

    try {
      final user = await _signUpWithEmailAndPassword(email, password);
      if (user != null) {
        Navigator.pushNamed(context, "/Home");
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage;

      switch (e.code) {
        case 'email-already-in-use':
          errorMessage = "Email sudah terdaftar. Silakan gunakan email lain.";
          break;
        case 'weak-password':
          errorMessage =
              "Password terlalu lemah. Gunakan password yang lebih kuat.";
          break;
        case 'invalid-email':
          errorMessage = "Format email tidak valid. Masukkan email yang benar.";
          break;
        case 'operation-not-allowed':
          errorMessage =
              "Metode pendaftaran ini tidak diizinkan. Silakan hubungi admin.";
          break;
        default:
          errorMessage = "Terjadi kesalahan. Silakan coba lagi.";
      }

      _showErrorDialog(errorMessage);
    } catch (e) {
      _showErrorDialog("Terjadi kesalahan yang tidak diketahui: $e");
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: cl.bg_Color,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: height / 1.2,
          width: width / 1.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 2),
            color: cl.icons_color,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    _isLoginForm ? "Login" : "Sign In",
                    style: const TextStyle(
                      color: Colors.white70,
                      letterSpacing: 7,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SvgPicture.asset(
                    "Assets/Images/coffee bean-bro.svg",
                    height: 230,
                  ),
                  _isLoginForm
                      ? _buildLoginForm(width)
                      : _buildSignInForm(width),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: _showForm,
                    child: Text(_isLoginForm ? "Sign In" : "Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(double width) {
    return Column(
      children: [
        TextField(
          style: TextStyle(color: Colors.white),
          controller: _emailController,
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                  style: BorderStyle.solid, color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: TextStyle(color: Colors.white),
          controller: _passwordController,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              gapPadding: 10,
              borderSide: const BorderSide(color: Colors.black, width: 9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          obscureText: true,
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: _signIn,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                "Login",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignInForm(double width) {
    return Column(
      children: [
        TextField(
          style: TextStyle(color: Colors.white),
          controller: _emailController,
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                  style: BorderStyle.solid, color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: TextStyle(color: Colors.white),
          controller: _passwordController,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              gapPadding: 10,
              borderSide: const BorderSide(color: Colors.black, width: 9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          obscureText: true,
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: _signUp,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                "Sign Up",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
