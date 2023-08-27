import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/github.dart';

part 'github_notifier.freezed.dart';

@freezed
class GithubState with _$GithubState {
  factory GithubState({
    Repository? repositories,
  }) = _GithubState;
}

final githubNotifierProvider =
StateNotifierProvider<GithubNotifier, GithubState>((ref) {
  return GithubNotifier(ref);
});

class GithubNotifier extends StateNotifier<GithubState> {
  final Ref ref;

  GithubNotifier(this.ref) : super(GithubState()) {
    Future.microtask(() {
      _init();
    });
  }

  _init() async {

  }




}