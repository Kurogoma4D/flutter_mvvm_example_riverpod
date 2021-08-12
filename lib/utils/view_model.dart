import 'package:flutter/widgets.dart';
import 'package:flutter_mvvm_example/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ViewModel extends ChangeNotifier with ViewModelMixin {}

mixin ViewModelMixin {
  @protected
  Reader get read;

  BuildContext get buildContext =>
      read(navigatorKeyProvider).currentState!.overlay!.context;
}
