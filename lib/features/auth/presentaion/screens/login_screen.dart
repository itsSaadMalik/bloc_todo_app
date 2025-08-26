import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_bloc.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_event.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  void dispose() {
    email.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('email'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: pass,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('pass'),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                      AuthLoginRequested(email: email.text, pass: pass.text),
                    );
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, AuthState state) {
        if (state is AuthStateFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
          print(state.errorMessage);
          // return Scaffold(body: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
