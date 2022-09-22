import 'package:centrolui/router/cl_routing_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            child: const Text("Login Page"),
            onTap: () => context.go("${RoutingPath.auth}/${RoutingPath.login}"),
          ),
          GestureDetector(
            child: const Text("Register Page"),
            onTap: () =>
                context.go("${RoutingPath.auth}/${RoutingPath.register}"),
          ),
          GestureDetector(
            child: const Text("Forgot Password?"),
            onTap: () =>
                context.go("${RoutingPath.auth}/${RoutingPath.forgotPassword}"),
          ),
          const SizedBox(width: double.infinity),
        ],
      ),
    );
  }
}
