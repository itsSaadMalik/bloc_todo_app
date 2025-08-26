import 'package:todo_app_bloc/core/utils/enums/auth_state_enum.dart';

class AuthResultsModel {
  final AuthStatus authStatus;
  final String? message;

  AuthResultsModel({required this.authStatus, required this.message});
}
