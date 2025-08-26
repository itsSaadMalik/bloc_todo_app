sealed class AuthState {}

class AuthStateInitial extends AuthState {}

class AuthStateLoading extends AuthState {}

class AuthStateSuccess extends AuthState {
  final String uid;
  final String email;

  AuthStateSuccess({required this.uid, required this.email});
}

class AuthStateFailure extends AuthState {
  final String errorMessage;

  AuthStateFailure({required this.errorMessage});
}
