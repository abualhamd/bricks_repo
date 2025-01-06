import 'package:equatable/equatable.dart';

abstract class BaseCallableClass<Ret, In> {
  Ret call(In inputs);
}

class NoInputs extends Equatable {
  @override
  List<Object?> get props => [];
}

class Nothing extends Equatable {
  @override
  List<Object?> get props => [];
}
