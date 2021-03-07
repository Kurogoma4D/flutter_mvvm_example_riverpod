import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

part 'memo.freezed.dart';

const _uuid = Uuid();

@freezed
class Memo with _$Memo {
  const factory Memo({
    @Default('') String id,
    @Default('') String title,
    @Default('') String contents,
  }) = _Memo;

  factory Memo.uuid() => Memo(id: _uuid.v4());
}
