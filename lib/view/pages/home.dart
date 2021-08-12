import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/models/controllers/app_state_controller.dart';
import 'package:flutter_mvvm_example/view/widgets/change_title_dialog.dart';
import 'package:flutter_mvvm_example/view_model/home_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _HomeTitle(),
      ),
      body: const _Memos(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showChangeTitleDialog(context),
        child: Icon(Icons.title),
      ),
    );
  }
}

class _HomeTitle extends ConsumerWidget {
  const _HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(appStateControllerProvider).title;
    return Text(title);
  }
}

class _Memos extends ConsumerWidget {
  const _Memos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memos = ref.watch(homeViewModel).memos;
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
          onPressed: () => ref.read(homeViewModel).onTapAddMemo(),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ],
    );
  }
}
