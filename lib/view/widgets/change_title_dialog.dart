import 'package:flutter/material.dart';

void showChangeTitleDialog(BuildContext context) => showDialog(
      context: context,
      builder: (_) => _ChangeTitleDialog(),
    );

class _ChangeTitleDialog extends StatelessWidget {
  const _ChangeTitleDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Title change to:'),
      children: [],
    );
  }
}
