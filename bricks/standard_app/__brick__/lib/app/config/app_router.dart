import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../injection_container.dart';
import '../../presentation/presentation.dart';
import 'routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: navigatorKey,
  // initialLocation: ,
  routes: [],
);
