import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AppInterceptors extends Interceptor {
  final String Function(String data) _removeHtml;

  AppInterceptors({required String Function(String) removeHtml})
      : _removeHtml = removeHtml;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      log('REQUEST[${options.method}] => PATH: ${options.path}');
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    response.data = _removeHtml(response.data.toString());
    if (kDebugMode) {
      log('REQUEST[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    }
    super.onResponse(response, handler);

    // if (response.statusCode == 401 || response.statusCode == 403) {
    //   // navigatorKey.currentContext?.goNamed(Routes.loginRoute);
    //   await _sharedPrefs.remove(key: SharedKeys.accessToken);

    //   navigatorKey.currentContext?.read<AuthBloc>().add(CheckAuthStatusEvent());
    // }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      log('REQUEST[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    }
    super.onError(err, handler);
  }
}
