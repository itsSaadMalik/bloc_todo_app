import 'package:todo_app_bloc/DI/core_injection.dart';
import 'package:todo_app_bloc/core/extensions/log_extension.dart';
import 'package:todo_app_bloc/features/auth/DI/auth_injection.dart';

Future<void> initDependencyInjection() async {
  try {
    await initCoreInjections();
    await initAuthInjections();
  } catch (e) {
    e.log();
  }
}
