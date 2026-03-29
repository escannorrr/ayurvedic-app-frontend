import 'package:vaidyaai/features/auth/domain/entities/user_entity.dart';
import 'package:vaidyaai/features/auth/domain/repositories/auth_repository.dart';
import 'package:vaidyaai/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:vaidyaai/core/services/storage_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final StorageService storageService;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.storageService,
  });

  @override
  Future<UserEntity> login(String email, String password) async {
    final userModel = await remoteDataSource.login(email, password);
    final token = userModel.accessToken ?? (userModel.fullName ?? userModel.email).hashCode.toString();
    
    // Infer name from email if server doesn't return full_name
    final nameFromServer = userModel.fullName;
    final effectiveName = (nameFromServer == null || nameFromServer.trim().isEmpty) 
        ? _inferName(userModel.email) 
        : nameFromServer;
    
    await storageService.write('auth_token', token);
    await storageService.write('user_id', userModel.id);
    await storageService.write('user_name', effectiveName);
    await storageService.write('user_email', userModel.email);
    
    return userModel.toEntity().copyWith(fullName: effectiveName);
  }

  String _inferName(String email) {
    try {
      final part = email.split('@').first;
      if (part.isEmpty) return 'Practitioner';
      return part[0].toUpperCase() + part.substring(1).toLowerCase();
    } catch (_) {
      return 'Practitioner';
    }
  }

  @override
  Future<void> logout() async {
    await storageService.delete('auth_token');
    await storageService.delete('user_id');
    await storageService.delete('user_name');
    await storageService.delete('user_email');
  }

  @override
  Future<String?> getToken() async {
    return await storageService.read('auth_token');
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    final token = await getToken();
    if (token == null) return null;
    
    final id = await storageService.read('user_id');
    final name = await storageService.read('user_name');
    final email = await storageService.read('user_email');
    
    // Fallback for legacy sessions that have a token but no stored user profile
    if (id == null || email == null) {
      return UserEntity(
        id: token.hashCode.toString(),
        fullName: 'Dr. Vaidya',
        email: 'doctor@vaidya.ai',
      );
    }

    return UserEntity(
      id: id,
      fullName: (name?.isEmpty ?? true) ? null : name,
      email: email,
    );
  }
}
