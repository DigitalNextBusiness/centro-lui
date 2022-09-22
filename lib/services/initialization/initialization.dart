import 'package:centrolui/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Initialization {
  init(BuildContext context) async {
    await _loadPreferences(context);
    await _loadServerData(context);
  }

  Future<bool> _loadPreferences(BuildContext context) async {
    AuthService auth = Provider.of<AuthService>(context, listen: false);
    auth.defaultUser();
    return true;
  }

  Future<bool> _loadServerData(BuildContext context) async {
    return true;
  }
}
