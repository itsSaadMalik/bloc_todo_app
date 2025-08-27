import 'package:todo_app_bloc/features/auth/data/datasrc/local_data_src_impl.dart';
import 'package:todo_app_bloc/features/auth/data/datasrc/remote_datasrc_impl.dart';
import 'package:todo_app_bloc/features/auth/data/model/user_model.dart';
import 'package:todo_app_bloc/features/auth/domain/repos/user_repo.dart';

class UserRepoImpl implements UserRepo {
  final LocalDataSrcImpl localDataSrcImpl;
  final RemoteDatasrcImpl remoteDatasrcImpl;

  UserRepoImpl({
    required this.localDataSrcImpl,
    required this.remoteDatasrcImpl,
  });

  @override
  Future<UserModel?> cacheUserLocally({required UserModel user}) {
    // TODO: implement cacheUserLocally
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> createUser({required String uid}) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> deleteUserData({required String uid}) {
    // TODO: implement deleteUserData
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> fetchUserData({required String uid}) {
    // TODO: implement fetchUserData
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> udpateUserData({required String uid}) {
    // TODO: implement udpateUserData
    throw UnimplementedError();
  }
}
