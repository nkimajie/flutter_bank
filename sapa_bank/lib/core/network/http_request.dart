import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class HttpServiceRequester {
  static BaseOptions baseOptions = BaseOptions(
    sendTimeout: 20000,
    connectTimeout: 20000,
    receiveTimeout: 20000,
  );
  final Dio dio = Dio(baseOptions);
  String baseUrl = 'https://bank.veegil.com';
  Future<Response> post({
    required String url,
    required dynamic body,
    String? token,
    Map<String, dynamic>? queryParams,
  }) async {
    dio.options.headers['Authorization'] = 'Bearer $token';
    dio.options.contentType = 'application/x-www-form-urlencoded';

    Logger().d(baseUrl + url);
    Logger().d(body);

    final response = await dio.post(
      baseUrl + url,
      data: body,
      queryParameters: queryParams,
    );
    Logger().d(response.data);
    return response;
  }

  Future<Response> getRequest<T>({
    required String url,
    String? token,
    Map<String, dynamic>? queryParam,
  }) async {
    dio.options.headers['Authorization'] = 'Bearer $token';
    final response = await dio.get(
      baseUrl + url,
      queryParameters: queryParam,
    );
    return response;
  }
}
