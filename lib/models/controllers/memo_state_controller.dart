import 'package:flutter_mvvm_example/models/memo/memo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final memoStateControllerProvider =
    StateNotifierProvider((_) => MemoStateController());

class MemoStateController extends StateNotifier<MemoState> {
  MemoStateController() : super(MemoState());

  void addMemo(String title, String contents) {
    state = state.copyWith(memos: [
      ...state.memos,
      Memo.uuid().copyWith(title: title, contents: contents),
    ]);
  }

  void toggleUpdate() {
    state = state.copyWith(isLoading: !state.isLoading);
  }
}
