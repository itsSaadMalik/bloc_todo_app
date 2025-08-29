import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app_bloc/core/utils/enums/auth_state_enum.dart';
import 'package:todo_app_bloc/features/auth/data/model/auth_results_model.dart';
import 'package:todo_app_bloc/features/auth/domain/datasrc/auth_datasrc.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';

class AuthDatasrcImpl implements AuthDatasrc {
  final FirebaseAuth firebaseAuth;

  AuthDatasrcImpl({required this.firebaseAuth});
  @override
  Future<AuthResults> login({
    required String email,
    required String pass,
  }) async =>
      AuthResults(authStatus: AuthStatus.success, message: 'login sucessfull');

  @override
  Future<AuthResults> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<AuthResults> deleteAccount({
    required String email,
    required String pass,
  }) {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<AuthResults> signUp({required String email, required String pass}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
