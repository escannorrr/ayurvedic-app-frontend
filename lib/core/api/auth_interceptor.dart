import 'package:dio/dio.dart';
import 'dart:async';
import 'package:vaidyaai/core/services/storage_service.dart';

class AuthInterceptor extends Interceptor {
  final StorageService storageService;
  final StreamController<bool> _logoutController = StreamController<bool>.broadcast();

  AuthInterceptor({required this.storageService});

  Stream<bool> get onUnauthorized => _logoutController.stream;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await storageService.read('auth_token');
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      _logoutController.add(true);
    }
    super.onError(err, handler);
  }

  void dispose() {
    _logoutController.close();
  }
}
