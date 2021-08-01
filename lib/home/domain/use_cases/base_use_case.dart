abstract class BaseUseCase<T, P> {
  Future<T> call(P parameter);
}

class NoParams {}
