import 'package:sovotest/app/domain/models/points_model.dart';
import 'package:sovotest/app/domain/models/todo_item_model.dart';
import 'package:sovotest/remote_data_sources/todo_remote_data_source.dart';

class ToDoRepository {
  ToDoRepository({
    required this.toDoRemoteDataSource,
  });
  final ToDoRemoteDataSource toDoRemoteDataSource;

  Future<List<ToDoItemModel>> getToDoModels() async {
    final tasksData = await toDoRemoteDataSource.getRemoteTasksData();
    return tasksData.docs
        .map((doc) => ToDoItemModel(
              task: doc['task'],
              taskDocumentId: doc.id,
            ))
        .toList();
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
}
