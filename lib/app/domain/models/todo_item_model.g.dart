// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDoItemModel _$$_ToDoItemModelFromJson(Map<String, dynamic> json) =>
    _$_ToDoItemModel(
      task: json['task'] as String,
      taskDocumentId: json['taskDocumentId'] as String? ?? '',
    );

Map<String, dynamic> _$$_ToDoItemModelToJson(_$_ToDoItemModel instance) =>
    <String, dynamic>{
      'task': instance.task,
      'taskDocumentId': instance.taskDocumentId,
    };
