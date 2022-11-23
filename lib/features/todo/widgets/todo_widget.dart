import 'package:flutter/material.dart';
import 'package:sovotest/app/domain/models/todo_item_model.dart';
import 'package:sovotest/features/todo/pages/todo_details_page.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({
    Key? key,
    required this.toDoItemModel,
  }) : super(key: key);

  final ToDoItemModel toDoItemModel;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          color: Colors.grey[200],
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => ToDoDetailsPage(
                        toDoItemModel: toDoItemModel,
                      )),
                ),
              );
            },
            leading: const Icon(
              Icons.miscellaneous_services,
            ),
            title: Text(toDoItemModel.task),
            trailing: const Icon(
              Icons.arrow_circle_right_outlined,
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    ));
  }
}
