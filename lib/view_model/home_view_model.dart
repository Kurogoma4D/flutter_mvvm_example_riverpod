import 'package:flutter_mvvm_example/models/controllers/memo_state_controller.dart';
import 'package:flutter_mvvm_example/models/memo/memo.dart';
import 'package:flutter_mvvm_example/utils/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _memosState =
    Provider((ref) => ref.watch(memoStateControllerProvider.state).memos);

final homeViewModel = ChangeNotifierProvider.autoDispose((ref) {
  final memos = ref.watch(_memosState);
  return HomeViewModel(ref, memos);
});

class HomeViewModel extends ViewModel {
  HomeViewModel(this.ref, this.memos);

  @override
  final ProviderReference ref;
  final List<Memo> memos;

  void onTapAddMemo() {
    final title = 'foo';
    final contents = 'bar';

    ref.read(memoStateControllerProvider).addMemo(title, contents);
  }
}
