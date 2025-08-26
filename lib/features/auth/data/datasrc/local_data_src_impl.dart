import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app_bloc/core/utils/enums/auth_state_enum.dart';
import 'package:todo_app_bloc/features/auth/data/model/auth_results_model.dart';

class LocalDataSrcImpl {
  final SharedPreferences sharedPreferences;

  LocalDataSrcImpl({required this.sharedPreferences});

  Future<AuthResultsModel> login() async {
    try {} catch (e) {
      return AuthResultsModel(authStatus: AuthStatus.failuer, message: '$e');
    }
  }
}
