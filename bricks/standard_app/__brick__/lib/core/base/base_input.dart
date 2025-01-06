import 'package:equatable/equatable.dart';

abstract class BaseInputs extends Equatable {
  const BaseInputs();
  Map<String, dynamic> toJson();
}
