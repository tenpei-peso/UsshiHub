// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendUser _$$_SendUserFromJson(Map<String, dynamic> json) => _$_SendUser(
      githubUserName: json['githubUserName'] as String,
      uid: json['uid'] as String,
      email: json['email'] as String,
      githubApiKey: json['githubApiKey'] as String,
    );

Map<String, dynamic> _$$_SendUserToJson(_$_SendUser instance) =>
    <String, dynamic>{
      'githubUserName': instance.githubUserName,
      'uid': instance.uid,
      'email': instance.email,
      'githubApiKey': instance.githubApiKey,
    };
