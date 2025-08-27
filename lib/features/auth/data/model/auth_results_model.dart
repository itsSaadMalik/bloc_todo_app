import 'package:todo_app_bloc/core/utils/enums/auth_state_enum.dart';

class AuthResults {
  final AuthStatus authStatus;
  final String? message;

  AuthResults({required this.authStatus, this.message});
}
