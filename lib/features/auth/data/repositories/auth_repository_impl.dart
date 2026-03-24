import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<UserEntity> login({required String email, required String password}) async {
    final userModel = await remoteDataSource.login(email: email, password: password);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> signup({required String email, required String password}) async {
    final userModel = await remoteDataSource.signup(email: email, password: password);
    return userModel.toEntity();
  }
}
