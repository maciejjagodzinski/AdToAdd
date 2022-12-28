// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToDoItemModel _$ToDoItemModelFromJson(Map<String, dynamic> json) {
  return _ToDoItemModel.fromJson(json);
}

/// @nodoc
mixin _$ToDoItemModel {
  @JsonKey(name: 'task')
  String get task => throw _privateConstructorUsedError;
  @JsonKey(name: 'addTime')
  DateTime get addTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get taskDocumentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoItemModelCopyWith<ToDoItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoItemModelCopyWith<$Res> {
  factory $ToDoItemModelCopyWith(
          ToDoItemModel value, $Res Function(ToDoItemModel) then) =
      _$ToDoItemModelCopyWithImpl<$Res, ToDoItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'task') String task,
      @JsonKey(name: 'addTime') DateTime addTime,
      @JsonKey(defaultValue: '') String taskDocumentId});
}

/// @nodoc
class _$ToDoItemModelCopyWithImpl<$Res, $Val extends ToDoItemModel>
    implements $ToDoItemModelCopyWith<$Res> {
  _$ToDoItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? addTime = null,
    Object? taskDocumentId = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      addTime: null == addTime
          ? _value.addTime
          : addTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskDocumentId: null == taskDocumentId
          ? _value.taskDocumentId
          : taskDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoItemModelCopyWith<$Res>
    implements $ToDoItemModelCopyWith<$Res> {
  factory _$$_ToDoItemModelCopyWith(
          _$_ToDoItemModel value, $Res Function(_$_ToDoItemModel) then) =
      __$$_ToDoItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'task') String task,
      @JsonKey(name: 'addTime') DateTime addTime,
      @JsonKey(defaultValue: '') String taskDocumentId});
}

/// @nodoc
class __$$_ToDoItemModelCopyWithImpl<$Res>
    extends _$ToDoItemModelCopyWithImpl<$Res, _$_ToDoItemModel>
    implements _$$_ToDoItemModelCopyWith<$Res> {
  __$$_ToDoItemModelCopyWithImpl(
      _$_ToDoItemModel _value, $Res Function(_$_ToDoItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? addTime = null,
    Object? taskDocumentId = null,
  }) {
    return _then(_$_ToDoItemModel(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      addTime: null == addTime
          ? _value.addTime
          : addTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskDocumentId: null == taskDocumentId
          ? _value.taskDocumentId
          : taskDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDoItemModel implements _ToDoItemModel {
  _$_ToDoItemModel(
      {@JsonKey(name: 'task') required this.task,
      @JsonKey(name: 'addTime') required this.addTime,
      @JsonKey(defaultValue: '') required this.taskDocumentId});

  factory _$_ToDoItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ToDoItemModelFromJson(json);

  @override
  @JsonKey(name: 'task')
  final String task;
  @override
  @JsonKey(name: 'addTime')
  final DateTime addTime;
  @override
  @JsonKey(defaultValue: '')
  final String taskDocumentId;

  @override
  String toString() {
    return 'ToDoItemModel(task: $task, addTime: $addTime, taskDocumentId: $taskDocumentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDoItemModel &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.addTime, addTime) || other.addTime == addTime) &&
            (identical(other.taskDocumentId, taskDocumentId) ||
                other.taskDocumentId == taskDocumentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, task, addTime, taskDocumentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoItemModelCopyWith<_$_ToDoItemModel> get copyWith =>
      __$$_ToDoItemModelCopyWithImpl<_$_ToDoItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToDoItemModelToJson(
      this,
    );
  }
}

abstract class _ToDoItemModel implements ToDoItemModel {
  factory _ToDoItemModel(
          {@JsonKey(name: 'task') required final String task,
          @JsonKey(name: 'addTime') required final DateTime addTime,
          @JsonKey(defaultValue: '') required final String taskDocumentId}) =
      _$_ToDoItemModel;

  factory _ToDoItemModel.fromJson(Map<String, dynamic> json) =
      _$_ToDoItemModel.fromJson;

  @override
  @JsonKey(name: 'task')
  String get task;
  @override
  @JsonKey(name: 'addTime')
  DateTime get addTime;
  @override
  @JsonKey(defaultValue: '')
  String get taskDocumentId;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoItemModelCopyWith<_$_ToDoItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
