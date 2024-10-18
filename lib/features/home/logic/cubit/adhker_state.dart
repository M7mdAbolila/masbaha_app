part of 'adhker_cubit.dart';

@immutable
sealed class AdhkerState {}

final class AdhkerInitial extends AdhkerState {}

final class ChangeCounterState extends AdhkerState {
  final int counter;

  ChangeCounterState(this.counter);
}

final class ChangeMasbahaImageState extends AdhkerState {
  final String path;

  ChangeMasbahaImageState(this.path);
}
