extension NullableMapper<T> on T? {
  K? map<K>(K Function(T) mapper) {
    return switch (this) {
      T value => mapper(value),
      _ => null,
    };
  }
}
