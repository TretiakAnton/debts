class Failure {
  final Object e;

  const Failure(this.e);

  @override
  String toString() => e.toString();
}
