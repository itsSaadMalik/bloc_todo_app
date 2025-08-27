import 'package:todo_app_bloc/features/auth/data/model/auth_results_model.dart';

abstract class AuthRepo {
  Future<AuthResults> loginUser({required String email, required String pass});
  Future<AuthResults> logoutUser({required String email, required String pass});

  Future<AuthResults> signUpUser({required String email, required String pass});
}
