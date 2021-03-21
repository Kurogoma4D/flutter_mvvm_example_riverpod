import 'package:flutter_mvvm_example/models/app_state/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStateControllerProvider =
    StateNotifierProvider((_) => AppStateController());

class AppStateController extends StateNotifier<AppState> {
  AppStateController() : super(AppState());

  Future setAppTitle(String value) async {
    // NOTE: Perform pseudo async action.
    await Future.delayed(const Duration(seconds: 1));

    state = state.copyWith(title: value);
  }
}
