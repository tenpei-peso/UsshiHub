import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_user.freezed.dart';
part 'firestore_user.g.dart';

@freezed
abstract class FirestoreUser with _$FirestoreUser {
  const factory FirestoreUser({
    required String email,
    required String githubUserName,
    required String uid,
    required String githubApiKey,
  }) = _FirestoreUser;
  factory FirestoreUser.fromJson(Map<String, dynamic> json) => _$FirestoreUserFromJson(json);
}