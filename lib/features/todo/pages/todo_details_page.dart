import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sovotest/app/domain/models/todo_item_model.dart';
import 'package:sovotest/app/injection_container.dart';
import 'package:sovotest/features/todo/cubit/todo_cubit.dart';

class ToDoDetailsPage extends StatelessWidget {
  const ToDoDetailsPage({
    required this.toDoItemModel,
    Key? key,
  }) : super(key: key);

  final ToDoItemModel toDoItemModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task details'),
      ),
      body: BlocProvider<ToDoCubit>(
        create: (context) => getIt(),
        child: BlocBuilder<ToDoCubit, ToDoState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Task:',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(toDoItemModel.task),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<ToDoCubit>()
                          .removeTask(documentId: toDoItemModel.taskDocumentId);
                    },
                    child: const Text('Delete task'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
