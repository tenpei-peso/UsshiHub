import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    UserCredential? user,
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

  GithubAuthProvider githubProvider = GithubAuthProvider();

  _init() async {

  }

  Future<void> signInWithGitHub() async {
    try {
      final UserCredential user = await FirebaseAuth.instance.signInWithProvider(githubProvider);
      state = state.copyWith(user: user);
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }

  }

}