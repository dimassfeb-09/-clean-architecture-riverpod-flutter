import 'package:teknikal_2/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<User> login(String username, String password);
}
