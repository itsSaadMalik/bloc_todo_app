import 'package:todo_app_bloc/features/auth/data/datasrc/auth_datasrc_impl.dart';
import 'package:todo_app_bloc/features/auth/data/model/auth_results_model.dart';
import 'package:todo_app_bloc/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthDatasrcImpl authDatasrcImpl;

  AuthRepoImpl({required this.authDatasrcImpl});
  @override
  Future<AuthResults> loginUser({required String email, required String pass}) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }

  @override
  Future<AuthResults> logoutUser() {
    // TODO: implement logoutUser
    throw UnimplementedError();
  }

  @override
  Future<AuthResults> signUpUser({
    required String email,
    required String pass,
  }) {
    // TODO: implement signUpUser
    throw UnimplementedError();
  }
}
