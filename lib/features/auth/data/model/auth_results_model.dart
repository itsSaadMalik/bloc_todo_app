import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app_bloc/core/utils/enums/auth_state_enum.dart';

class AuthResults {
  final AuthStatus authStatus;
  final String? message;
  final UserCredential? userCredential;

  AuthResults({required this.authStatus, this.message, this.userCredential});
}
