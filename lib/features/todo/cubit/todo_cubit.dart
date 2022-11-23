import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sovotest/app/core/enums.dart';
import 'package:sovotest/app/domain/models/todo_item_model.dart';
import 'package:sovotest/app/domain/repositories/todo_repository.dart';

part 'todo_state.dart';
part 'todo_cubit.freezed.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit({required this.toDoRepository})
      : super(const ToDoState(
          toDoItemModels: [],
          points: 0,
          status: Status.initial,
          errorMessage: null,
        ));

  final ToDoRepository toDoRepository;
  StreamSubscription? streamSubscription;

  Future<void> getToDoItems() async {
    emit(state.copyWith(status: Status.loading));
    try {
      streamSubscription =
          toDoRepository.getToDoModels().listen((toDoItemModels) {
        emit(state.copyWith(
          status: Status.success,
          toDoItemModels: toDoItemModels,
        ));
      });
    } catch (error) {
      emit(state.copyWith(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
    streamSubscription = toDoRepository.getPointsStream().listen((points) {
      emit(state.copyWith(
        points: points.points,
      ));
    })
      ..onError((error) {
        emit(state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
        ));
      });
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }

  Future<void> addTask({required String task}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      await toDoRepository.addToDoItem(task: task);
      emit(state.copyWith(status: Status.success));
    } catch (error) {
      emit(state.copyWith(status: Status.error));
    }
  }

  Future<void> removeTask({required String documentId}) async {
    emit(state.copyWith(status: Status.loading));
    try {
      await toDoRepository.deleteTodoItem(documentId: documentId);
      emit(state.copyWith(status: Status.success));
    } catch (error) {
      emit(state.copyWith(status: Status.error));
    }
  }
}
