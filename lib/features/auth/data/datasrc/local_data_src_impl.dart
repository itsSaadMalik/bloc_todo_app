import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app_bloc/core/extensions/log_extension.dart';
import 'package:todo_app_bloc/core/utils/enums/auth_state_enum.dart';
import 'package:todo_app_bloc/features/auth/data/model/auth_results_model.dart';

class LocalDataSrcImpl {
  final SharedPreferences sharedPreferences;

  LocalDataSrcImpl({required this.sharedPreferences});

  Future<AuthResults> saveLogin() async {
    try {
      await sharedPreferences.setBool('is_logged_in', true);
      return AuthResults(
        authStatus: AuthStatus.success,
        message: 'login saved!',
      );
    } catch (e) {
      return AuthResults(authStatus: AuthStatus.failuer, message: '$e');
    }
  }

  Future<bool> getLogin() async {
    try {
      return await sharedPreferences.setBool('is_logged_in', true);
    } catch (e) {
      e.log();
      return false;
    }
  }
}
