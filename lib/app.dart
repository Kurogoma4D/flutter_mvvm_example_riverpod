import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/view/pages/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _navigatorKey = GlobalKey<NavigatorState>();
final navigatorKeyProvider = Provider((_) => _navigatorKey);

class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef watch) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: _navigatorKey,
      home: const Home(),
    );
  }
}
