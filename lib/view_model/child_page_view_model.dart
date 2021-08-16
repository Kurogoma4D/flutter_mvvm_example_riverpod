import 'package:flutter_mvvm_example/models/controllers/memo_state_controller.dart';
import 'package:flutter_mvvm_example/models/memo/memo.dart';
import 'package:flutter_mvvm_example/utils/view_model.dart';
import 'package:riverpod/riverpod.dart';

final childPageViewModelProvider =
    Provider.autoDispose((ref) => ChildPageViewModel(ref));

class ChildPageViewModel extends ViewModel {
  @override
  final ProviderRefBase ref;
  final title = 'CHILD';

  ChildPageViewModel(this.ref) {
    ref.listen<MemoState>(memoStateControllerProvider, (value) {
      print(value.memos.length);
    });
  }
}
