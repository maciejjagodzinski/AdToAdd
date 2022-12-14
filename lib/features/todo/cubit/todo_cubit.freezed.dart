// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToDoState {
  List<ToDoItemModel> get toDoItemModels => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoStateCopyWith<ToDoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoStateCopyWith<$Res> {
  factory $ToDoStateCopyWith(ToDoState value, $Res Function(ToDoState) then) =
      _$ToDoStateCopyWithImpl<$Res, ToDoState>;
  @useResult
  $Res call(
      {List<ToDoItemModel> toDoItemModels,
      int points,
      Status status,
      String? errorMessage,
      bool saved});
}

/// @nodoc
class _$ToDoStateCopyWithImpl<$Res, $Val extends ToDoState>
    implements $ToDoStateCopyWith<$Res> {
  _$ToDoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoItemModels = null,
    Object? points = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? saved = null,
  }) {
    return _then(_value.copyWith(
      toDoItemModels: null == toDoItemModels
          ? _value.toDoItemModels
          : toDoItemModels // ignore: cast_nullable_to_non_nullable
              as List<ToDoItemModel>,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoStateCopyWith<$Res> implements $ToDoStateCopyWith<$Res> {
  factory _$$_ToDoStateCopyWith(
          _$_ToDoState value, $Res Function(_$_ToDoState) then) =
      __$$_ToDoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ToDoItemModel> toDoItemModels,
      int points,
      Status status,
      String? errorMessage,
      bool saved});
}

/// @nodoc
class __$$_ToDoStateCopyWithImpl<$Res>
    extends _$ToDoStateCopyWithImpl<$Res, _$_ToDoState>
    implements _$$_ToDoStateCopyWith<$Res> {
  __$$_ToDoStateCopyWithImpl(
      _$_ToDoState _value, $Res Function(_$_ToDoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoItemModels = null,
    Object? points = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? saved = null,
  }) {
    return _then(_$_ToDoState(
      toDoItemModels: null == toDoItemModels
          ? _value._toDoItemModels
          : toDoItemModels // ignore: cast_nullable_to_non_nullable
              as List<ToDoItemModel>,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToDoState implements _ToDoState {
  const _$_ToDoState(
      {required final List<ToDoItemModel> toDoItemModels,
      required this.points,
      required this.status,
      this.errorMessage,
      required this.saved})
      : _toDoItemModels = toDoItemModels;

  final List<ToDoItemModel> _toDoItemModels;
  @override
  List<ToDoItemModel> get toDoItemModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoItemModels);
  }

  @override
  final int points;
  @override
  final Status status;
  @override
  final String? errorMessage;
  @override
  final bool saved;

  @override
  String toString() {
    return 'ToDoState(toDoItemModels: $toDoItemModels, points: $points, status: $status, errorMessage: $errorMessage, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDoState &&
            const DeepCollectionEquality()
                .equals(other._toDoItemModels, _toDoItemModels) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.saved, saved) || other.saved == saved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_toDoItemModels),
      points,
      status,
      errorMessage,
      saved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoStateCopyWith<_$_ToDoState> get copyWith =>
      __$$_ToDoStateCopyWithImpl<_$_ToDoState>(this, _$identity);
}

abstract class _ToDoState implements ToDoState {
  const factory _ToDoState(
      {required final List<ToDoItemModel> toDoItemModels,
      required final int points,
      required final Status status,
      final String? errorMessage,
      required final bool saved}) = _$_ToDoState;

  @override
  List<ToDoItemModel> get toDoItemModels;
  @override
  int get points;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  bool get saved;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoStateCopyWith<_$_ToDoState> get copyWith =>
      throw _privateConstructorUsedError;
}
