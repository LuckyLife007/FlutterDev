import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/blocs/todos/todos_bloc.dart';
import 'package:todo_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) {
            var bloc = TodosBloc();
            bloc.add(const LoadTodos());
            return bloc;
          })
        ],
        child: MaterialApp(
          home: const HomeScreen(),
          title: 'BLoC Pattern - Todos',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: const Color(0xFF000A5F),
              appBarTheme: const AppBarTheme(color: Color(0xFF000A4F))),
        ));
  }
}
