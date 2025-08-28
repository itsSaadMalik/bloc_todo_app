import 'package:bloc/bloc.dart';
import 'package:todo_app_bloc/core/utils/enums/auth_state_enum.dart';
import 'package:todo_app_bloc/features/auth/domain/usecases/login_usecase.dart';
import 'package:todo_app_bloc/features/auth/domain/usecases/logout_usecase.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_event.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUsecase;
  final LogoutUsecase logoutUsecase;
  AuthBloc({required this.loginUsecase, required this.logoutUsecase})
    : super(AuthStateInitial()) {
    on<AuthLoginRequested>((event, emit) async {
      try {
        final email = event.email;
        final pass = event.pass;

        if (!(pass.length > 6)) {
          return emit(
            AuthStateFailure(
              errorMessage: 'password should be greater than 6 chars',
            ),
          );
        }
        if (email.trim().isNotEmpty) {
          final autthResults = await loginUsecase.login(
            email: email,
            pass: pass,
          );
          if (autthResults.authStatus == AuthStatus.success) {
            return emit(AuthStateSuccess(uid: '$email uid', email: email));
          } else {
            return emit(
              AuthStateFailure(
                errorMessage: 'some error in Auth: ${autthResults.message}',
              ),
            );
          }
        } else {
          return emit(AuthStateFailure(errorMessage: 'please enter email'));
        }
        await Future.delayed(Duration(seconds: 2));
        return emit(AuthStateSuccess(email: event.email, uid: event.email));
      } catch (e) {
        return emit(AuthStateFailure(errorMessage: 'auth error:$e'));
      }
    });
    on<AuthLogoutRequested>((event, emit) async {});
    on<AuthLoginStatusRequested>((event, emit) async {});
  }
}
