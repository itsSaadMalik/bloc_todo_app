import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app_bloc/features/auth/data/model/auth_results_model.dart';
import 'package:todo_app_bloc/features/auth/domain/datasrc/auth_datasrc.dart';

class AuthDatasrcImpl implements AuthDatasrc {
  final FirebaseAuth firebaseAuth;

  AuthDatasrcImpl({required this.firebaseAuth});
  @override
  Future<AuthResults> login({required String email, required String pass}) {
    // TODO: implement login
    throw UnimplementedError();
  }

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
