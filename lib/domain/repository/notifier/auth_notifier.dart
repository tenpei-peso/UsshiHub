import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/firestore_user.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    User? currentUser,
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

  Future<void> signIn() async{
    try {
      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      final User? user = result.user;
      final String uid = user!.uid;
      state = state.copyWith(currentUser: user);
      await createFirestoreUser(uid: uid);
    } on FirebaseAuthException catch(e) {
      debugPrint(e.toString());
    }
  }

  Future<void> createFirestoreUser({required String uid}) async {
    final FirestoreUser firestoreUser = FirestoreUser(
      email: emailController.text,
      githubUserName: githubUserNameController.text,
      uid: uid,
      githubApiKey: githubApiKeyController.text,
    );
    final Map<String,dynamic> userData = firestoreUser.toJson();
    await FirebaseFirestore.instance.collection("users").doc(uid).set(userData);
  }


}