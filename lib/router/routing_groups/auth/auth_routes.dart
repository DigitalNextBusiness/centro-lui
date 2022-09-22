import 'package:centrolui/router/cl_routing_path.dart';
import 'package:centrolui/screens/Auth/ForgotPasshowrd/forgot_password.dart';
import 'package:centrolui/screens/Auth/Login/login.dart';
import 'package:centrolui/screens/Auth/Register/register.dart';
import 'package:centrolui/screens/Auth/auth.dart';
import 'package:go_router/go_router.dart';

GoRoute authRouter = GoRoute(
    path: RoutingPath.auth,
    builder: (context, state) {
      return const AuthScreen();
    },
    routes: <RouteBase>[
      GoRoute(
        path: RoutingPath.login,
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: RoutingPath.register,
        builder: (_, __) => const RegisterScreen(),
      ),
      GoRoute(
        path: RoutingPath.forgotPassword,
        builder: (_, __) => const ForgotPasswordScreen(),
      ),
    ]);
