import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> initCoreInjections() async {
  final sl = GetIt.instance;
  // injection instance for sharePrefs
  sl.registerLazySingletonAsync(
    () async => await SharedPreferences.getInstance(),
  );
}
