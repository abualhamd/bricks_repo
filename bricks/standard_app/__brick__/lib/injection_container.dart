import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'app/app.dart';
import 'core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'infrastructure/infrastructure.dart';
import 'presentation/blocs.dart';

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
    getIt.registerLazySingleton(() => AppInterceptors());
    getIt.registerLazySingleton(() => LogInterceptor(
          requestBody: true,
          responseBody: true,
        ));
    getIt.registerSingleton<Dio>(Dio());
  }

  static void injectCore() {
    getIt.registerLazySingleton<List<Interceptor>>(() => [
          getIt<AppInterceptors>(),
          getIt<LogInterceptor>(),
        ]);
    getIt.registerLazySingleton<ApiConsumer>(
      () => DioConsumer(
        client: getIt(),
        baseUrl: EndPoints.baseUrl,
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
