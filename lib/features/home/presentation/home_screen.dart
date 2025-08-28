import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_bloc.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('Home Screen')),
          body: Center(child: Column(children: [])),
        );
      },
      listener: (BuildContext context, AuthState state) {},
    );
  }
}
