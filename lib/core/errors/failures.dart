class Failure {
  final String message;
  Failure({required this.message});
}

class FailureException extends Failure {
  FailureException({required super.message});
}
