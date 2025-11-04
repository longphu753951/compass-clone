import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../../utils/result.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthRepositoryDev extends ChangeNotifier {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get isAutheticated async* {
    await Future.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> login(
      {required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 1), 
        () => _controller.add(AuthenticationStatus.authenticated));

  }

  Future<void> logout() async {
    Future.delayed(const Duration(seconds: 1), () =>
        _controller.add(AuthenticationStatus.unauthenticated));
  }

  @override
  void dispose() {
    _controller.close();
  }

}