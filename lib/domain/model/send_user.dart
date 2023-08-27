import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_user.freezed.dart';
part 'send_user.g.dart';

@freezed
abstract class SendUser with _$SendUser {
  const factory SendUser({
    required String githubUserName,
    required String uid,
    required String email,
    required String githubApiKey,
  }) = _SendUser;
  factory SendUser.fromJson(Map<String, dynamic> json) => _$SendUserFromJson(json);
}