import 'package:budz_teste/domain/entity/user_entity.dart';

import '../../domain/repository/user_repository.dart';
import '../model/user_model.dart';

class UserRemoteRepository implements UserRepository {
  @override
  getUser(String id) async {
    await Future.delayed(const Duration(seconds: 2));
    final result = User.fromJson(mockJson);
    return result;
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    await Future.delayed(const Duration(seconds: 2));

    mockJson = User.fromEntity(user).toMap();
  }
}

Map<String, dynamic> mockJson = {
  "pets": [
    {"id": "48E792A6-EF69-467E-B9FB-E4C272AE23AF"},
    {"id": "B05C4E66-4E5E-4B4D-8BDE-B7AFC9F476FF"}
  ],
  "user": {
    "email": "j@teste.com",
    "generalPetID": "B05C4E66-4E5E-4B4D-8BDE-B7AFC9F476FF",
    "thirdPartyLoginIdToken": null,
    "pushAllow": null,
    "fullname": "J",
    "thirdPartyLoginServerAuthCode": null,
    "photoUrl": null,
    "updatedDate": "2023-09-14T00:00:00Z",
    "createdDate": "2023-09-14T00:00:00Z",
    "isThirdPartyLogin": null,
    "phoneNumber": null,
    "id": "48E792A6-EF69-467E-B9FB-E4C272AE23AF",
    "nickname": "J",
    "birthdate": null,
    "gender": null,
  },
  "subscription": {
    "userType": "free",
    "createdAt": null,
    "userId": "48E792A6-EF69-467E-B9FB-E4C272AE23AF",
    "updatedAt": null,
    "subscriptionStatus": "free",
    "id": "92D3775C-8B7D-44ED-A413-313B9CFB96B2",
    "subscriptionType": "free"
  }
};
