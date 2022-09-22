import 'dart:async';

import 'package:centrolui/models/entities/user/user.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  StreamController<User?> authStateChanges = StreamController.broadcast();

  User? _currentUser;

  bool get isUserLogged => _currentUser != null;

  // final _service = SdmApiService.instance;

  get defaultUser {
    _currentUser = const User(
        id: 0,
        email: "info@mvbdev.cloud",
        firstName: "Michele",
        lastName: "Vitiello Bonaventura");
    authStateChanges.add(_currentUser!);
    notifyListeners();
  }

  logout() {
    _currentUser = null;
    authStateChanges.add(_currentUser);
    notifyListeners();
  }
}
