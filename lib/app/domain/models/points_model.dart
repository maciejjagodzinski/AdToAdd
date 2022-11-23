import 'package:freezed_annotation/freezed_annotation.dart';

part 'points_model.g.dart';
part 'points_model.freezed.dart';

@freezed
class PointsModel with _$PointsModel {
  factory PointsModel({
    @JsonKey(name: 'points') required int points,
    @JsonKey(defaultValue: '') required String userDocumentId,
  }) = _PointsModel;

  factory PointsModel.fromJson(Map<String, dynamic> json) =>
      _$PointsModelFromJson(json);
}
