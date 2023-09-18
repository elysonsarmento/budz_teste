import '../entity/user_entity.dart';
import '../repository/user_repository.dart';

class UserUseCase {
  final UserRepository _userRepository;

  UserUseCase({required UserRepository userRepository})
      : _userRepository = userRepository;

  Future<void> saveUser(UserEntity user) async {
    await _userRepository.saveUser(user);
  }

  Future<UserEntity> getUser(String id) async {
    return await _userRepository.getUser(id);
  }
}
