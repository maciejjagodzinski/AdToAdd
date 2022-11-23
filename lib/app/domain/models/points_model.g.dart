// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PointsModel _$$_PointsModelFromJson(Map<String, dynamic> json) =>
    _$_PointsModel(
      points: json['points'] as int,
      userDocumentId: json['userDocumentId'] as String? ?? '',
    );

Map<String, dynamic> _$$_PointsModelToJson(_$_PointsModel instance) =>
    <String, dynamic>{
      'points': instance.points,
      'userDocumentId': instance.userDocumentId,
    };
