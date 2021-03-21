import 'package:flutter/material.dart';
import 'package:flutter_mvvm_example/models/controllers/app_state_controller.dart';
import 'package:flutter_mvvm_example/utils/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void showChangeTitleDialog(BuildContext context) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => _ChangeTitleDialog(),
    );

final _dialogControllerProvider = ChangeNotifierProvider.autoDispose(
    (ref) => _ChangeTitleDialogController(ref));

final _textEditingController = Provider.autoDispose((ref) {
  final title = ref.read(appStateControllerProvider.state).title;
  return TextEditingController(text: title);
});

final _formKey = GlobalKey<FormState>();

class _ChangeTitleDialogController extends ViewModel {
  bool _isProcessing = false;
  bool get isProcessing => _isProcessing;

  @override
  final ProviderReference ref;

  _ChangeTitleDialogController(this.ref);

  void onCompleteEditing() async {
    final isValidTitle = _formKey.currentState?.validate() ?? false;
    if (!isValidTitle) return;

    _isProcessing = true;
    notifyListeners();

    final title = ref.read(_textEditingController).text;
    await ref.read(appStateControllerProvider).setAppTitle(title);

    Navigator.of(buildContext).pop();
  }

  String? validationInput(String? value) {
    if (value == null) return 'Input some text.';
    if (value.length < 4) return 'Title text length requires at least 4.';

    return null;
  }
}

class _ChangeTitleDialog extends StatelessWidget {
  const _ChangeTitleDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SimpleDialog(
          contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
          title: Text('Title change to:'),
          children: [
            const _TitleForm(),
          ],
        ),
        Positioned.fill(child: const _LoadingOverlay()),
      ],
    );
  }
}

class _TitleForm extends ConsumerWidget {
  const _TitleForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final controller = watch(_textEditingController);
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: controller,
        validator: context.read(_dialogControllerProvider).validationInput,
        autovalidateMode: AutovalidateMode.always,
        textInputAction: TextInputAction.done,
        onEditingComplete: () =>
            context.read(_dialogControllerProvider).onCompleteEditing(),
      ),
    );
  }
}

class _LoadingOverlay extends ConsumerWidget {
  const _LoadingOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // TODO: selectできるようにする
    final isProcessing = watch(_dialogControllerProvider).isProcessing;
    return isProcessing
        ? DecoratedBox(
            decoration: BoxDecoration(color: Colors.black12),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SizedBox.shrink();
  }
}
