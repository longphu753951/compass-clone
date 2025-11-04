import 'dart:ui';

import 'package:compass_app/domain/models/user/user.dart';

class UserRepositoryDev  {
  User? _user;

  Future<User?> getUser() async {
    if(_user != null) {
      return _user;
    }
    return await Future.delayed(const Duration(seconds: 1), () =>
      _user = User(
        name: 'Dev User',
        image: 'https://www.gravatar.com/avatar/',
      )
    );
  }

  void dispose() {
    // TODO: implement dispose
  }
}