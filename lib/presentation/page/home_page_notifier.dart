import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_notifier.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    @Default(false) bool isLoading,
    @Default(false) bool apiError,
    @Default(0) int contribution,
    @Default('assets/images/caw.png') String imagePath,
  }) = _HomePageState;
}

final homePageNotifierProvider =
StateNotifierProvider.autoDispose<HomePageNotifier, HomePageState>((ref) {
  return HomePageNotifier(ref);
});

class HomePageNotifier extends StateNotifier<HomePageState> {
  final Ref ref;

  HomePageNotifier(this.ref) : super(HomePageState()) {
    Future.microtask(() {
      _init();
    });
  }

  _init() {
    increaseContribution();
  }

  void increaseContribution() {
    Timer.periodic(const Duration(seconds: 7), (timer) {
      final plusContribution = state.contribution + 5;
      state = state.copyWith(contribution: plusContribution);
      changeImagePaths();
    });
  }

  void changeErrorFlug(bool error) {
    state = state.copyWith(apiError: error);
  }

  void changeImagePath () {
    if(state.contribution >= 5) {
      state = state.copyWith(imagePath: 'assets/images/batten.png');
    }
    if(state.contribution >= 10) {
      state = state.copyWith(imagePath: 'assets/images/ganngimari.png');
    }
    if(state.contribution >= 15) {
      state = state.copyWith(imagePath: 'assets/images/yontetu.png');
    }
    if(state.contribution >= 20) {
      state = state.copyWith(imagePath: 'assets/images/batten.png');
    }
  }

  void changeImagePaths () {
    if (state.contribution % 15 == 5) {
      state = state.copyWith(imagePath: 'assets/images/batten.png');
    } else if (state.contribution % 15 == 10) {
      state = state.copyWith(imagePath: 'assets/images/ganngimari.png');
    } else {
      state = state.copyWith(imagePath: 'assets/images/yontetu.png');
    }
  }

}