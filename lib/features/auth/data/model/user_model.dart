import 'package:todo_app_bloc/features/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, super.uid});
  @override
  bool operator ==(covariant UserModel other) => uid == other.uid;

  @override
  int get hashCode => uid.hashCode;
}
