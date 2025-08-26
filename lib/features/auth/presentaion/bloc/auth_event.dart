sealed class AuthEvent {}

class AuthLoginRequested extends AuthEvent {
  final String email;
  final String pass;

  AuthLoginRequested({required this.email, required this.pass});
}

class AuthLogoutRequested extends AuthEvent {}

class AuthLoginStatusRequested extends AuthEvent {}
