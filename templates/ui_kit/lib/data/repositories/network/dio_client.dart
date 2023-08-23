import 'dart:io';
import 'package:dio/dio.dart';

import 'package:ui_kit/domain/domain.dart';

/// Helps to gather general exception handling and to configure dio
///
class DioClient extends Client {
  DioClient()
      : _dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(milliseconds: 5000),
            receiveTimeout: const Duration(milliseconds: 5000),
            responseType: ResponseType.json,
          ),
        );

  late final Dio _dio;

  @override
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on SocketException {
      return Response(
          requestOptions: RequestOptions(),
          statusMessage: 'Internet connection interrupted');
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on SocketException {
      // Show no internet dialog
      return Response(
          requestOptions: RequestOptions(),
          statusMessage: 'Internet connection interrupted');
    } catch (e) {
      rethrow;
    }
  }
}
