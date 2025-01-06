import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/core.dart';

final getIt = GetIt.instance;

Future initDependencies() async {
  await InjectionHelper.injectExternal();
  InjectionHelper.injectCore();
  InjectionHelper.injectDatasources();
  InjectionHelper.injectRepos();
  InjectionHelper.injectQueries();
  InjectionHelper.injectCommands();
  InjectionHelper.injectUsecases();
  InjectionHelper.injectBlocs();
}

abstract class InjectionHelper {
  static Future<void> injectExternal() async {
    getIt.registerSingleton<Dio>(Dio());
  }

  static void injectCore() {
    getIt.registerLazySingleton<BaseDio>(
      () => DioClient(
        dio: getIt(),
        options: BaseOptions(
          baseUrl: EndPoints.baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
        interceptors: getIt(),
      ),
    );
  }

  static void injectDatasources() {}

  static void injectRepos() {}

  static void injectCommands() {}

  static void injectQueries() {}

  static void injectUsecases() {}

  static void injectBlocs() {}
}
