import 'package:dio/dio.dart';
import 'package:teknikal_2/core/constants/app_api.dart';

class DioClient {
  final Dio dio;

  DioClient()
    : dio = Dio(
        BaseOptions(baseUrl: AppApi.baseUrl, contentType: 'application/json'),
      );
}
