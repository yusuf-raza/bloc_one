import 'package:counter_app_block/screens/home_page_screen.dart';
import 'package:flutter/material.dart';

import '../bloc/bloc_imports.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const MyApp()), blocObserver: MyBlocObserver());
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
