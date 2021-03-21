import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/view_model/home_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: const _Memos(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(homeViewModel).onTapUpdate(),
        child: Icon(Icons.update),
      ),
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
