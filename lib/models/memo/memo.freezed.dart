// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'memo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MemoStateTearOff {
  const _$MemoStateTearOff();

  _MemoState call({List<Memo> memos = const [], dynamic isLoading = false}) {
    return _MemoState(
      memos: memos,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $MemoState = _$MemoStateTearOff();

/// @nodoc
mixin _$MemoState {
  List<Memo> get memos => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemoStateCopyWith<MemoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoStateCopyWith<$Res> {
  factory $MemoStateCopyWith(MemoState value, $Res Function(MemoState) then) =
      _$MemoStateCopyWithImpl<$Res>;
  $Res call({List<Memo> memos, dynamic isLoading});
}

/// @nodoc
class _$MemoStateCopyWithImpl<$Res> implements $MemoStateCopyWith<$Res> {
  _$MemoStateCopyWithImpl(this._value, this._then);

  final MemoState _value;
  // ignore: unused_field
  final $Res Function(MemoState) _then;

  @override
  $Res call({
    Object? memos = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      memos: memos == freezed
          ? _value.memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$MemoStateCopyWith<$Res> implements $MemoStateCopyWith<$Res> {
  factory _$MemoStateCopyWith(
          _MemoState value, $Res Function(_MemoState) then) =
      __$MemoStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Memo> memos, dynamic isLoading});
}

/// @nodoc
class __$MemoStateCopyWithImpl<$Res> extends _$MemoStateCopyWithImpl<$Res>
    implements _$MemoStateCopyWith<$Res> {
  __$MemoStateCopyWithImpl(_MemoState _value, $Res Function(_MemoState) _then)
      : super(_value, (v) => _then(v as _MemoState));

  @override
  _MemoState get _value => super._value as _MemoState;

  @override
  $Res call({
    Object? memos = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_MemoState(
      memos: memos == freezed
          ? _value.memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
    ));
  }
}

/// @nodoc
class _$_MemoState with DiagnosticableTreeMixin implements _MemoState {
  const _$_MemoState({this.memos = const [], this.isLoading = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<Memo> memos;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemoState(memos: $memos, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemoState'))
      ..add(DiagnosticsProperty('memos', memos))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MemoState &&
            (identical(other.memos, memos) ||
                const DeepCollectionEquality().equals(other.memos, memos)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(memos) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$MemoStateCopyWith<_MemoState> get copyWith =>
      __$MemoStateCopyWithImpl<_MemoState>(this, _$identity);
}

abstract class _MemoState implements MemoState {
  const factory _MemoState({List<Memo> memos, dynamic isLoading}) =
      _$_MemoState;

  @override
  List<Memo> get memos => throw _privateConstructorUsedError;
  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MemoStateCopyWith<_MemoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MemoTearOff {
  const _$MemoTearOff();

  _Memo call({String id = '', String title = '', String contents = ''}) {
    return _Memo(
      id: id,
      title: title,
      contents: contents,
    );
  }
}

/// @nodoc
const $Memo = _$MemoTearOff();

/// @nodoc
mixin _$Memo {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemoCopyWith<Memo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoCopyWith<$Res> {
  factory $MemoCopyWith(Memo value, $Res Function(Memo) then) =
      _$MemoCopyWithImpl<$Res>;
  $Res call({String id, String title, String contents});
}

/// @nodoc
class _$MemoCopyWithImpl<$Res> implements $MemoCopyWith<$Res> {
  _$MemoCopyWithImpl(this._value, this._then);

  final Memo _value;
  // ignore: unused_field
  final $Res Function(Memo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? contents = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MemoCopyWith<$Res> implements $MemoCopyWith<$Res> {
  factory _$MemoCopyWith(_Memo value, $Res Function(_Memo) then) =
      __$MemoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String contents});
}

/// @nodoc
class __$MemoCopyWithImpl<$Res> extends _$MemoCopyWithImpl<$Res>
    implements _$MemoCopyWith<$Res> {
  __$MemoCopyWithImpl(_Memo _value, $Res Function(_Memo) _then)
      : super(_value, (v) => _then(v as _Memo));

  @override
  _Memo get _value => super._value as _Memo;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? contents = freezed,
  }) {
    return _then(_Memo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Memo with DiagnosticableTreeMixin implements _Memo {
  const _$_Memo({this.id = '', this.title = '', this.contents = ''});

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String contents;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Memo(id: $id, title: $title, contents: $contents)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Memo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('contents', contents));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Memo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality()
                    .equals(other.contents, contents)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(contents);

  @JsonKey(ignore: true)
  @override
  _$MemoCopyWith<_Memo> get copyWith =>
      __$MemoCopyWithImpl<_Memo>(this, _$identity);
}

abstract class _Memo implements Memo {
  const factory _Memo({String id, String title, String contents}) = _$_Memo;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get contents => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MemoCopyWith<_Memo> get copyWith => throw _privateConstructorUsedError;
}
