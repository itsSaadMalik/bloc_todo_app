import 'package:todo_app_bloc/features/auth/data/model/user_model.dart';

abstract class UserRepo {
  Future<UserModel?> fetchUserData({required String uid});
  Future<UserModel?> cacheUserLocally({required UserModel user});

  Future<UserModel?> udpateUserData({required String uid});
  Future<UserModel?> deleteUserData({required String uid});
  Future<UserModel?> createUser({required String uid});
}
