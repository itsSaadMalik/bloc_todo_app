import 'package:todo_app_bloc/features/auth/data/model/user_model.dart';
import 'package:todo_app_bloc/features/auth/domain/datasrc/remote_datasrc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RemoteDatasrcImpl implements RemoteDatasrc {
  final FirebaseFirestore firebaseFirestore;

  RemoteDatasrcImpl({required this.firebaseFirestore});
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
