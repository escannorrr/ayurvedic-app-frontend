import 'package:vaidyaai/core/api/api_exception.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server Error']);

  factory ServerFailure.fromException(ApiException exception) {
    return ServerFailure(exception.message);
  }
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network Error']);
}

class AuthFailure extends Failure {
  const AuthFailure([super.message = 'Authentication Failed']);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Cache Error']);
}

class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}
