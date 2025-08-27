import 'package:todo_app_bloc/features/auth/data/model/auth_results_model.dart';

abstract class AuthDatasrc {
  Future<AuthResults> login({required String email, required String pass});
  Future<AuthResults> logout();
  Future<AuthResults> signUp({required String email, required String pass});
  Future<AuthResults> deleteAccount({
    required String email,
    required String pass,
  });
}
