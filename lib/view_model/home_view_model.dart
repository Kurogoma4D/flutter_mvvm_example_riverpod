import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm_example/models/controllers/memo_state_controller.dart';
import 'package:flutter_mvvm_example/models/memo/memo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _memosState =
    Provider((ref) => ref.watch(memoStateControllerProvider.state).memos);

final homeViewModel = ChangeNotifierProvider.autoDispose((ref) {
  final memos = ref.watch(_memosState);
  return HomeViewModel(ref, memos);
});

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._ref, this.memos);

  final ProviderReference _ref;
  final List<Memo> memos;

  void onTapAddMemo() {
    final title = 'foo';
    final contents = 'bar';

    _ref.read(memoStateControllerProvider).addMemo(title, contents);
  }

  void onTapUpdate() => _ref.read(memoStateControllerProvider).toggleUpdate();
}
