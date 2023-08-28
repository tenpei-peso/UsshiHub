import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ussihub/domain/repository/notifier/make_note_notifier.dart';

part 'home_page_notifier.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    @Default(false) bool isLoading,
    @Default(false) bool apiError,
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

  _init() async {

  }

  void changeErrorFlug(bool error) {
    state = state.copyWith(apiError: error);
  }

}