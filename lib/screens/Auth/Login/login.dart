import 'package:centrolui/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => auth.defaultUser,
          child: const Text("Login"),
        ),
      ),
    );
  }
}
