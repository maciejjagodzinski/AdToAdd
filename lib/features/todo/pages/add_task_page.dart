import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sovotest/app/injection_container.dart';
import 'package:sovotest/features/todo/cubit/todo_cubit.dart';

class AddTaskPage extends StatelessWidget {
  AddTaskPage({
    required this.points,
    Key? key,
  }) : super(key: key);

  final int points;
  final taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add task'),
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
                  TextField(
                    controller: taskController,
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      hintText: 'write your task here',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        await context.read<ToDoCubit>().addTask(
                            task: taskController.text,
                            newPoints: points);
                      },
                      child: Text('Save Task'))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
