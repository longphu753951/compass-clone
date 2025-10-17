import '../../../utils/result.dart';
import 'auth_repository.dart';

class AuthRepositoryDev extends AuthRepository {
  @override
  Future<bool> get isAutheticated async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }

  @override
  Future<Result<void>> login(
      {required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> logout() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Result.ok(null);
  }
}