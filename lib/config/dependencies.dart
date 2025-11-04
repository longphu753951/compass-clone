import 'package:compass_app/data/repositories/auth/auth_repository_dev.dart';
import 'package:compass_app/data/repositories/user/user_repository_dev.dart';
import 'package:compass_app/ui/auth/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providersRemote {
  return [
    BlocProvider<LoginBloc>(
      create: (BuildContext context) => LoginBloc(
        authRepository: context.read<AuthRepositoryDev>(),
        userRepository:  context.read<UserRepositoryDev>(),
      ),
    ),
  ];
}