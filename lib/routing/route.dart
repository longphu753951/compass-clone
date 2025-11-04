import 'package:compass_app/routing/routes.dart';
import 'package:compass_app/ui/auth/login/widget/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../data/repositories/auth/auth_repository_dev.dart';

GoRouter route(AuthRepositoryDev auth) => GoRouter(
  initialLocation: Routes.login,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) {
        return LoginScreen();
      },
    ),
  ],
);



Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  final authRepo = context.read<AuthRepositoryDev>();
  final loggedInStatus = await authRepo.isAutheticated.first;
  final loggingIn = state.matchedLocation == Routes.login;

  if (loggedInStatus == AuthenticationStatus.unauthenticated) {
    return Routes.login;
  }

  if(loggingIn) {
    return Routes.home;
  }
  return null;
}