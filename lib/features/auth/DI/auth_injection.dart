import 'package:get_it/get_it.dart';
import 'package:todo_app_bloc/features/auth/data/datasrc/auth_datasrc_impl.dart';
import 'package:todo_app_bloc/features/auth/data/datasrc/local_data_src_impl.dart';
import 'package:todo_app_bloc/features/auth/data/datasrc/remote_datasrc_impl.dart';
import 'package:todo_app_bloc/features/auth/data/repo/auth_repo_impl.dart';
import 'package:todo_app_bloc/features/auth/data/repo/user_repo_impl.dart';
import 'package:todo_app_bloc/features/auth/domain/usecases/login_usecase.dart';
import 'package:todo_app_bloc/features/auth/domain/usecases/logout_usecase.dart';
import 'package:todo_app_bloc/features/auth/presentaion/bloc/auth_bloc.dart';

final sl = GetIt.instance;
Future<void> initAuthInjections() async {
  // bloc
  sl.registerFactory(() => AuthBloc(loginUsecase: sl(), logoutUsecase: sl()));

  // usecases
  sl.registerLazySingleton(
    () => LoginUsecase(authRepoImpl: sl(), userRepoImpl: sl()),
  );
  sl.registerLazySingleton(
    () => LogoutUsecase(authRepoImpl: sl(), userRepoImpl: sl()),
  );

  //repo
  sl.registerLazySingleton<AuthRepoImpl>(
    () => AuthRepoImpl(authDatasrcImpl: sl()),
  );
  sl.registerLazySingleton<UserRepoImpl>(
    () => UserRepoImpl(localDataSrcImpl: sl(), remoteDatasrcImpl: sl()),
  );

  //datasrc
  sl.registerLazySingleton<AuthDatasrcImpl>(
    () => AuthDatasrcImpl(firebaseAuth: sl()),
  );
  sl.registerLazySingleton<RemoteDatasrcImpl>(
    () => RemoteDatasrcImpl(firebaseFirestore: sl()),
  );
  sl.registerLazySingleton<LocalDataSrcImpl>(
    () => LocalDataSrcImpl(sharedPreferences: sl()),
  );

  //external source(singleton)
  // since i am initializing the externals in initCoreDI()
  // sl() here will get the dependency itself
}
