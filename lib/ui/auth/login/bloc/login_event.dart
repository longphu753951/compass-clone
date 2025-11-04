part of 'login_bloc.dart';

sealed class LoginEvent  {
  const LoginEvent();
}

final class LoginSubcriptionRequested extends LoginEvent {}

final class LogoutRequested extends LoginEvent {}
