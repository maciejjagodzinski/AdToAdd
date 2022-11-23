import 'package:sovotest/app/domain/models/points_model.dart';
import 'package:sovotest/app/domain/models/todo_item_model.dart';
import 'package:sovotest/remote_data_sources/todo_remote_data_source.dart';

class ToDoRepository {
  ToDoRepository({
    required this.toDoRemoteDataSource,
  });
  final ToDoRemoteDataSource toDoRemoteDataSource;

  Stream<List<ToDoItemModel>> getToDoModels() {
    final tasksData = toDoRemoteDataSource.getRemoteTasksData();
    return tasksData.map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return ToDoItemModel(
          task: doc['task'],
          taskDocumentId: doc.id,
        );
      }).toList();
    });
  }

  Stream<PointsModel> getPointsStream() {
    final snapshots = toDoRemoteDataSource.getRemotePointsData();
    return snapshots.map((doc) {
      return PointsModel(
        points: doc['points'],
        userDocumentId: doc.id,
      );
    });
  }

  Future<void> addToDoItem({required String task}) async {
    await toDoRemoteDataSource.addTaskData(task: task);
  }

  Future<void> deleteTodoItem({required String documentId}) async {
    await toDoRemoteDataSource.deleteTaskData(documentId: documentId);
  }
}
