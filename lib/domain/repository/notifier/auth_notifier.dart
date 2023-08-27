import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default('') String email,
    @Default('') String githubUserName,
    @Default('') String password,
    @Default('') String githubApiKey,
  }) = _AuthState;
}

final authNotifierProvider =
StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final Ref ref;

  AuthNotifier(this.ref) : super(AuthState()) {
    Future.microtask(() {
      _init();
    });
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController githubUserNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController githubApiKeyController = TextEditingController();


  _init() async {
  }

  signIn() {
    print('email${emailController.text}');
    print('username${githubUserNameController.text}');
    print('password${passwordController.text}');
    print('key${githubApiKeyController.text}');
  }


}