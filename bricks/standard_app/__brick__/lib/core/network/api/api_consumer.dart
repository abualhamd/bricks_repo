import 'package:dartz/dartz.dart';

import '../error.dart';

abstract class ApiConsumer {
  Future<Either<ServerFailure, Map<String, dynamic>>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    required Map<String, dynamic> Function(String data) parser,
  });
  Future<Either<ServerFailure, Map<String, dynamic>>> post({
    required String path,
    required Object body,
    String? contentType,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
  Future<Either<ServerFailure, Map<String, dynamic>>> put({
    required String path,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });
  Future<Either<ServerFailure, Map<String, dynamic>>> delete({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });
}
