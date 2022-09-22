import 'package:centrolui/layouts/clean_layout.dart';
import 'package:centrolui/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);
    return ClCleanLayout(
      title: "Profile",
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Id: ${auth.userLogged!.id}"),
          Text("E-mail: ${auth.userLogged!.email}"),
          Text("FirstName: ${auth.userLogged!.firstName}"),
          Text("LastName: ${auth.userLogged!.lastName}"),
        ],
      ),
    );
  }
}
