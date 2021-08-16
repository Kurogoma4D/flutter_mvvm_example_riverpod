import 'dart:math' as math;

import 'package:flutter_mvvm_example/models/controllers/memo_state_controller.dart';
import 'package:flutter_mvvm_example/models/memo/memo.dart';
import 'package:flutter_mvvm_example/utils/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _random = math.Random();

final homeViewModel =
    ChangeNotifierProvider.autoDispose((ref) => HomeViewModel(ref));

class HomeViewModel extends ViewModel {
  HomeViewModel(this.ref) {
    ref.listen<MemoState>(memoStateControllerProvider, (value) {
      memos = value.memos;
      notifyListeners();
    });

    Stream.periodic(Duration(seconds: 5)).listen((_) {
      var title = '';
      for (var i = 0; i < 10; i++) {
        title += String.fromCharCode('a'.codeUnitAt(0) + _random.nextInt(26));
      }

      read(memoStateControllerProvider.notifier).addMemo(title, 'foo');
    });
  }

  @override
  final ProviderRefBase ref;

  List<Memo> memos = [];

  void onTapAddMemo() {
    final title = 'foo';
    final contents = 'bar';

    read(memoStateControllerProvider.notifier).addMemo(title, contents);
  }
}
