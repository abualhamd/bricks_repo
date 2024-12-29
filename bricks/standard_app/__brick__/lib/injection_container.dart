import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:infrastructure/infrastructure.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    final sharedPreferences = await SharedPreferences.getInstance();

    getIt.registerFactory<BaseLocalStorage>(
      () => SharedPrefsLocalStorageImpl(preferences: sharedPreferences),
    );
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
    getIt.registerSingleton<Link>(CustomHttpLink(
      graphQLBaseUrl: EndPoints.graphQLBaseUrl,
    ));
    getIt.registerSingleton<AuthLink>(AuthLink(
      getToken: () async {
        final accessToken =
            await getIt<BaseLocalStorage>().getString(SharedKeys.accessToken);
        return "Bearer $accessToken";
      },
    ));
    getIt.registerSingleton<GraphQlConfig>(
      GraphQlConfig(
        link: Link.from(
          [
            getIt<AuthLink>(),
            getIt<Link>(),
          ],
        ),
      ),
    );
    getIt.registerSingleton<GraphService>(GraphService(graphQLConfig: getIt()));
  }

  static void injectDatasources() {}

  static void injectRepos() {}

  static void injectCommands() {}

  static void injectQueries() {}

  static void injectUsecases() {}

  static void injectBlocs() {}
}
