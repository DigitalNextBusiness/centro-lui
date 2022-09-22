import 'package:centrolui/app.dart';
import 'package:centrolui/router/cl_router.dart';
import 'package:centrolui/services/auth/auth_service.dart';
import 'package:centrolui/services/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  AuthService auth = AuthService();
  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeService>(create: (context) => ThemeService()),
      ChangeNotifierProvider<AuthService>(create: (context) => auth),
      Provider<AppRouter>(create: (_) => AppRouter(auth)),
    ],
    child: const App(),
  ));
}
