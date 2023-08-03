import 'package:counter_app_block/bloc/bloc_imports.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Counter app with Bloc"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              //wrapping the widget that needs state update with BlocBuilder
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Center(
                    child: Text(
                      '${state.counterValue}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              //calling bloc event on button press
              onPressed: () => context.read<CounterBloc>().add(CounterDecrementEvent()),
              tooltip: 'Increment',
              child: const Icon(Icons.remove),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              //calling bloc event on button press
              onPressed: () => context.read<CounterBloc>().add(CounterIncrementEvent()),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
