import 'package:centrolui/router/cl_routing_path.dart';
import 'package:centrolui/router/routing_groups/auth/auth_routes.dart';
import 'package:centrolui/screens/Home/home_screen.dart';
import 'package:centrolui/screens/Profile/profile.dart';
import 'package:centrolui/screens/Settings/settings_screen.dart';
import 'package:centrolui/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter get router => _goRouter;

  AuthService auth;

  AppRouter(this.auth);

  late final GoRouter _goRouter = GoRouter(
    initialLocation: RoutingPath.home,
    routes: <GoRoute>[
      GoRoute(
        path: RoutingPath.home,
        builder: (_, __) => const HomePage(),
      ),
      authRouter,
      GoRoute(
        path: RoutingPath.settings,
        builder: (_, __) => const SettingScreen(),
      ),
      GoRoute(
        path: RoutingPath.profile,
        builder: (_, __) => const ProfileScreen(),
      ),
    ],
    redirect: (context, state) {
      bool goingToAuthenticationRoutes = state.location == RoutingPath.auth ||
          state.location == "${RoutingPath.auth}/${RoutingPath.login}" ||
          state.location == "${RoutingPath.auth}/${RoutingPath.register}" ||
          state.location == "${RoutingPath.auth}/${RoutingPath.forgotPassword}";

      if (!auth.isUserLogged && !goingToAuthenticationRoutes) {
        return RoutingPath.auth;
      }

      debugPrint(
          "Going to auth: ${auth.isUserLogged && goingToAuthenticationRoutes} | ${auth.isUserLogged} $goingToAuthenticationRoutes");

      if (auth.isUserLogged && goingToAuthenticationRoutes) {
        return RoutingPath.home;
      }

      return null;
    },
    refreshListenable: auth,
  );
}
