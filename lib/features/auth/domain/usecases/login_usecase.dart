import 'package:vaidyaai/features/auth/domain/repositories/auth_repository.dart';
import 'package:vaidyaai/features/auth/domain/entities/user_entity.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<UserEntity> call(String email, String password) async {
    return await repository.login(email, password);
  }
}
