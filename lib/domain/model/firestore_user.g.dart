// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirestoreUser _$$_FirestoreUserFromJson(Map<String, dynamic> json) =>
    _$_FirestoreUser(
      email: json['email'] as String,
      githubUserName: json['githubUserName'] as String,
      uid: json['uid'] as String,
      githubApiKey: json['githubApiKey'] as String,
    );

Map<String, dynamic> _$$_FirestoreUserToJson(_$_FirestoreUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'githubUserName': instance.githubUserName,
      'uid': instance.uid,
      'githubApiKey': instance.githubApiKey,
    };
