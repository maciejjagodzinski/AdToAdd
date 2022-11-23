import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ToDoRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>> getRemoteTasksData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('tasks')
        .snapshots();
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> getRemotePointsData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .snapshots();
  }

  Future<void> addTaskData({required String task, required int points}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('tasks')
        .add({'task': task}).whenComplete(() async {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .set({'points': points});
    });
  }

  Future<void> deleteTaskData({
    required String documentId,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('tasks')
        .doc(documentId)
        .delete();
  }

  Future<void> addTaskPoints() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .set({'points': 3});
  }
}
