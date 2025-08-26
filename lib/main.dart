import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/core/themes/app_theme.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_bloc.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_event.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_state.dart';
import 'package:todo_app_bloc/features/auth/presentaion/screens/login_screen.dart';
import 'package:todo_app_bloc/features/home/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AuthBloc(),
      child: MaterialApp(
        theme: AppThemes.appLightTheme,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      builder: (BuildContext context, state) {
        if (state is AuthStateInitial) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        } else if (state is AuthStateLoading) {
          return const Scaffold(
            body: Center(
              child: Column(
                children: [Text('loading...'), CircularProgressIndicator()],
              ),
            ),
          );
        } else if (state is AuthStateSuccess) {
          return Scaffold(body: Center(child: HomeScreen()));
        }
        return LoginScreen();
      },
      listener: (BuildContext context, state) {
        // if (state is AuthStateInitial) {
        //   context.read<AuthBloc>().add(
        //     AuthLoginRequested(email: email, pass: pass),
        //   );
        // }
      },
    );
  }
}
