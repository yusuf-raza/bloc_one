import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(counterValue: 0)) {
    on<CounterIncrementEvent>((event, emit) {
      // TODO: implement event handler
      emit(CounterState(counterValue: state.counterValue + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      // TODO: implement event handler
      emit(CounterState(counterValue: state.counterValue - 1));
    });
  }
}
