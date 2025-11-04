import 'package:bloc/bloc.dart';
import 'package:compass_app/data/repositories/auth/auth_repository_dev.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/repositories/user/user_repository_dev.dart';
import '../../../../domain/models/user/user.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepositoryDev _authRepository;
  final UserRepositoryDev _userRepository;

  LoginBloc({
    required AuthRepositoryDev authRepository,
    required UserRepositoryDev userRepository,
  }) :  _authRepository = authRepository,
        _userRepository = userRepository,
        super(const LoginState.unknown()) {
      on<LoginSubcriptionRequested>(_onSubscriptionRequested);
      on<LogoutRequested>(_onLogoutRequested);
  }

  Future<void>_onSubscriptionRequested(
      LoginSubcriptionRequested event,
      Emitter<LoginState> emit,
      ) {
    return emit.onEach(
        _authRepository.isAutheticated,
        onData: (status) async {
          switch (status) {
            case AuthenticationStatus.authenticated:
              final user = await _userRepository.getUser();
              return emit(user != null
                  ? LoginState.authenticated(user)
                  : const LoginState.unauthenticated());
            case AuthenticationStatus.unauthenticated:
              return emit(const LoginState.unauthenticated());
            case AuthenticationStatus.unknown:
              return emit(const LoginState.unknown());
          }
        },
        onError: addError
    );
  }

  Future<void> _onLogoutRequested(
      LogoutRequested event,
      Emitter<LoginState> emit)  {
    _authRepository.logout();
    return Future.value();
  }
}
