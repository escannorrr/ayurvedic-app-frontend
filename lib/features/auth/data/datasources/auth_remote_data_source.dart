import 'package:dio/dio.dart';
import 'package:vaidyaai/core/api/api_client.dart';
import 'package:vaidyaai/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> signup(String email, String password, String fullName);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await apiClient.post(
      '/auth/login',
      data: {
        'username': email, // FastAPI OAuth2 uses 'username'
        'password': password,
      },
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );

    // Inject the email from the request into the model since the API only returns a token
    final model = UserModel.fromJson(response.data);
    return model.copyWith(email: email);
  }

  @override
  Future<UserModel> signup(String email, String password, String fullName) async {
    final response = await apiClient.post(
      '/auth/signup',
      data: {
        'email': email,
        'password': password,
        'full_name': fullName,
      },
    );

    return UserModel.fromJson(response.data);
  }
}
