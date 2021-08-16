import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/view_model/child_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChildPage extends ConsumerWidget {
  const ChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(childPageViewModelProvider).title;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text('yey'),
      ),
    );
  }
}
