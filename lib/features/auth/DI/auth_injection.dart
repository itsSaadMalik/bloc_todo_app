import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_bloc.dart';

final sl = GetIt.instance;
Future<void> initAuthInjections() async {
  sl.registerFactory(() => AuthBloc());
}
