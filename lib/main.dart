import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app_bloc/core/themes/app_theme.dart';
import 'package:todo_app_bloc/features/auth/DI/injection_init.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_bloc.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_state.dart';
import 'package:todo_app_bloc/features/auth/presentaion/screens/login_screen.dart';
import 'package:todo_app_bloc/features/home/presentation/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

final sl = GetIt.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "dummy-api-key",
      appId: "1:1234567890:android:abcdef123456",
      messagingSenderId: "1234567890",
      projectId: "dummy-project-id",
    ),
  );
  await initDependencyInjection();
  await sl.allReady();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => sl<AuthBloc>()),
      ],
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
          return Scaffold(body: LoginScreen());
        } else if (state is AuthStateLoading) {
          return const Scaffold(
            body: Center(
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('loading...'), CircularProgressIndicator()],
              ),
            ),
          );
        } else if (state is AuthStateSuccess) {
          return Scaffold(body: HomeScreen());
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
