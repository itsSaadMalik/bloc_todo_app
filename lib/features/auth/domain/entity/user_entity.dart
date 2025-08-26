import 'package:uuid/uuid.dart';

class UserEntity {
  final String name;
  final String email;
  final String uid;

  UserEntity({required this.name, required this.email, String? uid})
    : uid = uid ?? Uuid().v4();
}
