import 'package:dartz/dartz.dart';

import '../network/error.dart';

abstract class EitherMapper {
  static Either<Failure, List<To>> mapList<To, From>(
      {required Either<Failure, List<From>> either,
      required To Function(From) mapper}) {
    return either.fold(
      (failure) {
        return Left(failure);
      },
      (entities) {
        final List<To> dtos = entities.map(mapper).toList();

        return Right(dtos);
      },
    );
  }

  static Either<Failure, To> mapSingle<To, From>(
      {required Either<Failure, From> either,
      required To Function(From) mapper}) {
    return either.fold(
      (failure) {
        return Left(failure);
      },
      (entity) {
        final dto = mapper(entity);

        return Right(dto);
      },
    );
  }
}