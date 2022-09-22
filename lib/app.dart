import 'package:centrolui/costants/constants.dart';
import 'package:centrolui/router/cl_router.dart';
import 'package:centrolui/services/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter goRouter = Provider.of<AppRouter>(context).router;

    // ClRouter router = ClRouter(auth);
    return MaterialApp.router(
      title: APP_NAME,
      routerConfig: goRouter,
      // routerConfig: router,
      theme: Provider.of<ThemeService>(context).currentTheme,
    );
  }
}
