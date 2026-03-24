import 'package:dio/dio.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({required String email, required String password});
  Future<UserModel> signup({required String email, required String password});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<UserModel> login({required String email, required String password}) async {
    try {
      // Mocked API call for the sake of the UI implementation
      await Future.delayed(const Duration(seconds: 2));
      
      if (email.isNotEmpty && password.isNotEmpty) {
        return const UserModel(
          id: '1',
          email: 'dr.sharma@vaidya.ai',
          name: 'Dr. Sharma',
          token: 'mock_token',
          clinicName: 'AyuCare Wellness Center',
          specialty: 'Ayurvedic Specialist',
          avatarUrl: '',
        );
      } else {
        throw Exception('Invalid credentials');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> signup({required String email, required String password}) async {
    // Mocked API call
    await Future.delayed(const Duration(seconds: 2));
    
    return const UserModel(
      id: '2',
      email: 'new@vaidya.ai',
      name: 'New Practitioner',
      token: 'mock_token',
      clinicName: 'AyuCare Wellness Center',
      specialty: 'Ayurvedic Specialist',
      avatarUrl: '',
    );
  }
}
