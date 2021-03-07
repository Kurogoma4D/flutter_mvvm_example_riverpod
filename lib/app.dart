import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/models/memo/memo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class MemoStateController extends StateNotifier<List<Memo>> {
  MemoStateController() : super([]);

  void addMemo(String title, String contents) {
    state = [
      ...state,
      Memo.uuid().copyWith(title: title, contents: contents),
    ];
  }
}

final memoStateControllerProvider =
    StateNotifierProvider((_) => MemoStateController());

final homeViewModel =
    ChangeNotifierProvider.autoDispose((ref) => HomeViewModel(ref));

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._ref) {
    _memoStateStream =
        _ref.read(memoStateControllerProvider).stream.listen((state) {
      memos = state;
      notifyListeners();
    });
  }

  final ProviderReference _ref;
  late final StreamSubscription _memoStateStream;

  List<Memo> memos = [];

  void onTapAddMemo() {
    final title = 'foo';
    final contents = 'bar';

    _ref.read(memoStateControllerProvider).addMemo(title, contents);
  }

  @override
  void dispose() {
    _memoStateStream.cancel();
    super.dispose();
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: const _Memos(),
    );
  }
}

class _Memos extends ConsumerWidget {
  const _Memos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final memos = watch(homeViewModel).memos;
    return ListView(
      children: [
        for (final memo in memos)
          ListTile(
            title: Text(memo.title),
            subtitle: Text(memo.contents),
          ),
        MaterialButton(
          color: Colors.greenAccent,
          splashColor: Colors.greenAccent.shade400,
          onPressed: () => context.read(homeViewModel).onTapAddMemo(),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ],
    );
  }
}
