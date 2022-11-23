part of 'todo_cubit.dart';

@freezed
class ToDoState with _$ToDoState {
  const factory ToDoState({
    required List<ToDoItemModel> toDoItemModels,
    required int points,
    required Status status,
    String? errorMessage,
    required bool saved,
  }) = _ToDoState;
}
