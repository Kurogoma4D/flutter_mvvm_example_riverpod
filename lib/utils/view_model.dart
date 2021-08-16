import 'package:flutter/widgets.dart';
import 'package:flutter_mvvm_example/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ViewModel extends ChangeNotifier with ViewModelMixin {}

mixin ViewModelMixin {
  @protected
  late final ProviderRefBase ref;

  @protected
  Reader get read => ref.read;

  BuildContext get buildContext =>
      read(navigatorKeyProvider).currentState!.overlay!.context;
}
