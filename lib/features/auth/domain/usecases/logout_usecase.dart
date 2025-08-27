import 'package:todo_app_bloc/core/extensions/log_extension.dart';
import 'package:todo_app_bloc/core/utils/enums/auth_state_enum.dart';
import 'package:todo_app_bloc/features/auth/data/model/auth_results_model.dart';
import 'package:todo_app_bloc/features/auth/data/repo/auth_repo_impl.dart';
import 'package:todo_app_bloc/features/auth/data/repo/user_repo_impl.dart';

class LogoutUsecase {
  final AuthRepoImpl authRepoImpl;
  final UserRepoImpl userRepoImpl;

  LogoutUsecase({required this.authRepoImpl, required this.userRepoImpl});

  Future<AuthResults> logout() async {
    try {
      final authResults = await authRepoImpl.logoutUser();

      return authResults;
    } catch (e) {
      e.log();
      return AuthResults(authStatus: AuthStatus.failuer, message: e.toString());
    }
  }
}
