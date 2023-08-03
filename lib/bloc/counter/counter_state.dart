part of 'counter_bloc.dart';

@immutable
class CounterState extends Equatable {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  // TODO: implement props
  List<Object?> get props => [counterValue];
}

class CounterInitial extends CounterState {
  const CounterInitial({required int counterValue}) : super(counterValue: 0);
}
