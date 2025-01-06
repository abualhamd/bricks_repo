import 'package:dartz/dartz.dart';

import '../core.dart';

typedef IdentifierRecord<T> = ({T id, String title});
typedef FutureEitherFailureOr<T> = Future<Either<Failure, T>>;
typedef FutureEitherFailureOrMap = FutureEitherFailureOr<Map<String, dynamic>>;
