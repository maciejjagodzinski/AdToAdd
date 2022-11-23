import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_model.g.dart';
part 'todo_item_model.freezed.dart';

@freezed
class ToDoItemModel with _$ToDoItemModel {
  factory ToDoItemModel({
    @JsonKey(name: 'task') required String task,
    @JsonKey(defaultValue: '') required String taskDocumentId,
  }) = _ToDoItemModel;

  factory ToDoItemModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoItemModelFromJson(json);
}
