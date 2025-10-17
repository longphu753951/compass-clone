import 'package:flutter/foundation.dart';

import '../../../utils/result.dart';

/// Utility class to wrap result data
///
/// Evaluate the result using a switch statement:
/// ```dart
/// switch (result) {
///   case Ok(): {
///     print(result.value);
///   }
///   case Error(): {
///     print(result.error);
///   }
/// }
/// ```

abstract class AuthRepository extends ChangeNotifier {
  Future<bool> get isAutheticated;
  /// Perform login
  Future<Result<void>> login({required String email, required String password});

  /// Perform logout
  Future<Result<void>> logout();
}