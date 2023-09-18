import 'dart:convert';

import '../../domain/entity/user_entity.dart';

class User extends UserEntity {
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

  User({
    required this.email,
    this.generalPetID,
    this.thirdPartyLoginIdToken,
    this.pushAllow,
    required this.fullname,
    this.photoUrl,
    required this.updatedDate,
    required this.createdDate,
    this.phoneNumber,
    required this.id,
    required this.nickname,
    this.birthdate,
  }) : super(
          email,
          generalPetID,
          thirdPartyLoginIdToken,
          pushAllow,
          fullname,
          photoUrl,
          updatedDate,
          createdDate,
          phoneNumber,
          id,
          nickname,
          birthdate,
        );

  factory User.fromJson(Map<String, dynamic> json) {
    json = json['user'];
    return User(
      email: json['email'],
      generalPetID: json['generalPetID'],
      thirdPartyLoginIdToken: json['thirdPartyLoginIdToken'],
      pushAllow: json['pushAllow'],
      fullname: json['fullname'],
      photoUrl: json['photoUrl'],
      updatedDate: DateTime.parse(json['updatedDate']),
      createdDate: DateTime.parse(json['createdDate']),
      phoneNumber: json['phoneNumber'],
      id: json['id'],
      nickname: json['nickname'],
      birthdate: json['birthdate'],
    );
  }

  User copyWith({
    String? email,
    String? generalPetID,
    dynamic thirdPartyLoginIdToken,
    dynamic pushAllow,
    String? fullname,
    dynamic thirdPartyLoginServerAuthCode,
    dynamic photoUrl,
    DateTime? updatedDate,
    DateTime? createdDate,
    dynamic isThirdPartyLogin,
    dynamic phoneNumber,
    String? id,
    String? nickname,
    dynamic birthdate,
    dynamic gender,
    String? password,
  }) {
    return User(
      email: email ?? this.email,
      generalPetID: generalPetID ?? this.generalPetID,
      thirdPartyLoginIdToken:
          thirdPartyLoginIdToken ?? this.thirdPartyLoginIdToken,
      pushAllow: pushAllow ?? this.pushAllow,
      fullname: fullname ?? this.fullname,
      photoUrl: photoUrl ?? this.photoUrl,
      updatedDate: updatedDate ?? this.updatedDate,
      createdDate: createdDate ?? this.createdDate,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      birthdate: birthdate ?? this.birthdate,
    );
  }

  @override
  String toString() {
    return 'User(email: $email, generalPetID: $generalPetID, thirdPartyLoginIdToken: $thirdPartyLoginIdToken, pushAllow: $pushAllow, fullname: $fullname, photoUrl: $photoUrl, updatedDate: $updatedDate, createdDate: $createdDate, phoneNumber: $phoneNumber, id: $id, nickname: $nickname, birthdate: $birthdate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
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

  factory User.fromEntity(UserEntity user) {
    return User(
      email: user.email,
      generalPetID: user.generalPetID,
      thirdPartyLoginIdToken: user.thirdPartyLoginIdToken,
      pushAllow: user.pushAllow,
      fullname: user.fullname,
      photoUrl: user.photoUrl,
      updatedDate: user.updatedDate,
      createdDate: user.createdDate,
      phoneNumber: user.phoneNumber,
      id: user.id,
      nickname: user.nickname,
      birthdate: user.birthdate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'generalPetID': generalPetID,
      'thirdPartyLoginIdToken': thirdPartyLoginIdToken,
      'pushAllow': pushAllow,
      'fullname': fullname,
      'photoUrl': photoUrl,
      'updatedDate': updatedDate.millisecondsSinceEpoch,
      'createdDate': createdDate.millisecondsSinceEpoch,
      'phoneNumber': phoneNumber,
      'id': id,
      'nickname': nickname,
      'birthdate': birthdate?.millisecondsSinceEpoch,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      email: map['email'] ?? '',
      generalPetID: map['generalPetID'],
      thirdPartyLoginIdToken: map['thirdPartyLoginIdToken'],
      pushAllow: map['pushAllow'],
      fullname: map['fullname'] ?? '',
      photoUrl: map['photoUrl'],
      updatedDate: DateTime.fromMillisecondsSinceEpoch(map['updatedDate']),
      createdDate: DateTime.fromMillisecondsSinceEpoch(map['createdDate']),
      phoneNumber: map['phoneNumber'],
      id: map['id'] ?? '',
      nickname: map['nickname'] ?? '',
      birthdate: map['birthdate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['birthdate'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());
}
