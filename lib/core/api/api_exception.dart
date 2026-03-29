import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic data;
  final ExceptionType type;

  ApiException({
    required this.message,
    this.statusCode,
    this.data,
    this.type = ExceptionType.unknown,
  });

  @override
  String toString() => 'ApiException: $message (Status: $statusCode, Type: $type)';
}

enum ExceptionType {
  badRequest,      // 400
  unauthorized,    // 401
  forbidden,       // 403
  notFound,        // 404
  internalServer,  // 500
  network,         // Connection issues
  timeout,         // Timeout issues
  unknown,
}

class ApiErrorHandler {
  static ApiException handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return ApiException(
            message: 'Connection timed out',
            type: ExceptionType.timeout,
          );
        case DioExceptionType.badResponse:
          return _handleBadResponse(error.response);
        case DioExceptionType.connectionError:
          return ApiException(
            message: 'No internet connection',
            type: ExceptionType.network,
          );
        default:
          return ApiException(
            message: 'Something went wrong',
            type: ExceptionType.unknown,
          );
      }
    }
    return ApiException(message: error.toString());
  }

  static ApiException _handleBadResponse(Response? response) {
    final statusCode = response?.statusCode;
    final Map<String, dynamic>? data = response?.data is Map ? response?.data : null;
    final message = data?['message'] ?? 
                    data?['error'] ?? 
                    data?['detail'] ?? 
                    'An error occurred';
    
    switch (statusCode) {
      case 400:
        return ApiException(message: message, statusCode: statusCode, type: ExceptionType.badRequest);
      case 401:
        return ApiException(message: message, statusCode: statusCode, type: ExceptionType.unauthorized);
      case 403:
        return ApiException(message: message, statusCode: statusCode, type: ExceptionType.forbidden);
      case 404:
        return ApiException(message: message, statusCode: statusCode, type: ExceptionType.notFound);
      case 500:
        return ApiException(message: message, statusCode: statusCode, type: ExceptionType.internalServer);
      default:
        return ApiException(message: message, statusCode: statusCode);
    }
  }
}
