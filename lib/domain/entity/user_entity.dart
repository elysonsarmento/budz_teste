class UserEntity {
  final String email;
  final String? generalPetID;
  final String? thirdPartyLoginIdToken;
  final bool? pushAllow;
  final String fullname;
  final String? photoUrl;
  final DateTime updatedDate;
  final DateTime createdDate;
  final String? phoneNumber;
  final String id;
  final String nickname;
  final DateTime? birthdate;

  UserEntity(
    this.email,
    this.generalPetID,
    this.thirdPartyLoginIdToken,
    this.pushAllow,
    this.fullname,
    this.photoUrl,
    this.updatedDate,
    this.createdDate,
    this.phoneNumber,
    this.id,
    this.nickname,
    this.birthdate,
  );

  @override
  String toString() {
    return 'UserEntity(email: $email, generalPetID: $generalPetID, thirdPartyLoginIdToken: $thirdPartyLoginIdToken, pushAllow: $pushAllow, fullname: $fullname, photoUrl: $photoUrl, updatedDate: $updatedDate, createdDate: $createdDate, phoneNumber: $phoneNumber, id: $id, nickname: $nickname, birthdate: $birthdate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserEntity &&
        other.email == email &&
        other.generalPetID == generalPetID &&
        other.thirdPartyLoginIdToken == thirdPartyLoginIdToken &&
        other.pushAllow == pushAllow &&
        other.fullname == fullname &&
        other.photoUrl == photoUrl &&
        other.updatedDate == updatedDate &&
        other.createdDate == createdDate &&
        other.phoneNumber == phoneNumber &&
        other.id == id &&
        other.nickname == nickname &&
        other.birthdate == birthdate;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        generalPetID.hashCode ^
        thirdPartyLoginIdToken.hashCode ^
        pushAllow.hashCode ^
        fullname.hashCode ^
        photoUrl.hashCode ^
        updatedDate.hashCode ^
        createdDate.hashCode ^
        phoneNumber.hashCode ^
        id.hashCode ^
        nickname.hashCode ^
        birthdate.hashCode;
  }

  UserEntity copyWith({
    String? email,
    String? generalPetID,
    String? thirdPartyLoginIdToken,
    bool? pushAllow,
    String? fullname,
    String? photoUrl,
    DateTime? updatedDate,
    DateTime? createdDate,
    String? phoneNumber,
    String? id,
    String? nickname,
    DateTime? birthdate,
  }) {
    return UserEntity(
      email ?? this.email,
      generalPetID ?? this.generalPetID,
      thirdPartyLoginIdToken ?? this.thirdPartyLoginIdToken,
      pushAllow ?? this.pushAllow,
      fullname ?? this.fullname,
      photoUrl ?? this.photoUrl,
      updatedDate ?? this.updatedDate,
      createdDate ?? this.createdDate,
      phoneNumber ?? this.phoneNumber,
      id ?? this.id,
      nickname ?? this.nickname,
      birthdate ?? this.birthdate,
    );
  }
}
