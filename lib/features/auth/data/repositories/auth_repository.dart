import 'package:dio/dio.dart';
import 'package:teknikal_2/core/errors/exceptions.dart';
import 'package:teknikal_2/features/auth/data/datasources/auth_datasource.dart';
import 'package:teknikal_2/features/auth/data/models/user_model.dart';
import 'package:teknikal_2/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDatasource;

  AuthRepositoryImpl({required this.authDatasource});

  @override
  Future<UserModel> login(String username, String password) async {
    try {
      return await authDatasource.login(username, password);
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? 'Gagal Login');
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
