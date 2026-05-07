import 'package:teknikal_2/features/auth/domain/entities/user_entity.dart';
import 'package:teknikal_2/features/auth/domain/repositories/auth_repository.dart';

abstract class LoginUseCase {
  Future<User> call(String username, String password);
}

class LoginUseCaseImpl implements LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCaseImpl({required this.authRepository});

  @override
  Future<User> call(String username, String password) {
    return authRepository.login(username, password);
  }
}
