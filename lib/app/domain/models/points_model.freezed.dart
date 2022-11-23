// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'points_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointsModel _$PointsModelFromJson(Map<String, dynamic> json) {
  return _PointsModel.fromJson(json);
}

/// @nodoc
mixin _$PointsModel {
  @JsonKey(name: 'points')
  int get points => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get userDocumentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointsModelCopyWith<PointsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsModelCopyWith<$Res> {
  factory $PointsModelCopyWith(
          PointsModel value, $Res Function(PointsModel) then) =
      _$PointsModelCopyWithImpl<$Res, PointsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'points') int points,
      @JsonKey(defaultValue: '') String userDocumentId});
}

/// @nodoc
class _$PointsModelCopyWithImpl<$Res, $Val extends PointsModel>
    implements $PointsModelCopyWith<$Res> {
  _$PointsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? userDocumentId = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      userDocumentId: null == userDocumentId
          ? _value.userDocumentId
          : userDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PointsModelCopyWith<$Res>
    implements $PointsModelCopyWith<$Res> {
  factory _$$_PointsModelCopyWith(
          _$_PointsModel value, $Res Function(_$_PointsModel) then) =
      __$$_PointsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'points') int points,
      @JsonKey(defaultValue: '') String userDocumentId});
}

/// @nodoc
class __$$_PointsModelCopyWithImpl<$Res>
    extends _$PointsModelCopyWithImpl<$Res, _$_PointsModel>
    implements _$$_PointsModelCopyWith<$Res> {
  __$$_PointsModelCopyWithImpl(
      _$_PointsModel _value, $Res Function(_$_PointsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? userDocumentId = null,
  }) {
    return _then(_$_PointsModel(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      userDocumentId: null == userDocumentId
          ? _value.userDocumentId
          : userDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointsModel implements _PointsModel {
  _$_PointsModel(
      {@JsonKey(name: 'points') required this.points,
      @JsonKey(defaultValue: '') required this.userDocumentId});

  factory _$_PointsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PointsModelFromJson(json);

  @override
  @JsonKey(name: 'points')
  final int points;
  @override
  @JsonKey(defaultValue: '')
  final String userDocumentId;

  @override
  String toString() {
    return 'PointsModel(points: $points, userDocumentId: $userDocumentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointsModel &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.userDocumentId, userDocumentId) ||
                other.userDocumentId == userDocumentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, points, userDocumentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PointsModelCopyWith<_$_PointsModel> get copyWith =>
      __$$_PointsModelCopyWithImpl<_$_PointsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointsModelToJson(
      this,
    );
  }
}

abstract class _PointsModel implements PointsModel {
  factory _PointsModel(
          {@JsonKey(name: 'points') required final int points,
          @JsonKey(defaultValue: '') required final String userDocumentId}) =
      _$_PointsModel;

  factory _PointsModel.fromJson(Map<String, dynamic> json) =
      _$_PointsModel.fromJson;

  @override
  @JsonKey(name: 'points')
  int get points;
  @override
  @JsonKey(defaultValue: '')
  String get userDocumentId;
  @override
  @JsonKey(ignore: true)
  _$$_PointsModelCopyWith<_$_PointsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
