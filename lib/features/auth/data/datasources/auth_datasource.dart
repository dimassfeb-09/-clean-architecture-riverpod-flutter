import 'package:dio/dio.dart';
import 'package:teknikal_2/core/constants/app_api.dart';
import 'package:teknikal_2/core/errors/exceptions.dart';
import 'package:teknikal_2/core/network/dio_client.dart';
import 'package:teknikal_2/features/auth/data/models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> login(String username, String password);
}

class AuthDataSourceImpl implements AuthDataSource {
  final DioClient dioClient;

  AuthDataSourceImpl({required this.dioClient});

  @override
  Future<UserModel> login(String username, String password) async {
    try {
      final response = await dioClient.dio.post(
        AppApi.login,
        data: {"username": username, "password": password},
      );
      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? 'Gagal Login');
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
