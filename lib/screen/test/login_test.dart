import 'package:flutter/material.dart';
import 'package:nearby/service/auth.dart';

class LoginTestScreen extends StatelessWidget {
  LoginTestScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Auth"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: emailController,
              ),
              TextField(
                controller: passwordController,
              ),
              ElevatedButton(
                onPressed: () {
                  AuthService.createUser(emailController.text, passwordController.text);
                },
                child: Text("Create User"),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthService.doEmailLogin(emailController.text, passwordController.text);
                },
                child: Text("Login"),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthService.signInWithGoogle();
                },
                child: Text("signIn Google"),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthService.signInWithApple();
                },
                child: Text("signIn Apple"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
