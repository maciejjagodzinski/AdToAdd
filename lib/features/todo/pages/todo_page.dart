import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sovotest/app/core/enums.dart';
import 'package:sovotest/app/injection_container.dart';
import 'package:sovotest/features/cubit/root_cubit.dart';
import 'package:sovotest/features/todo/cubit/todo_cubit.dart';
import 'package:sovotest/features/todo/widgets/todo_widget.dart';

class ToDoPage extends StatelessWidget {
  const ToDoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ToDoCubit>(
      create: (context) {
        return getIt()..getToDoItems();
      },
      child: BlocBuilder<ToDoCubit, ToDoState>(
        builder: (context, state) {
          final toDoItemModels = state.toDoItemModels;

          if (state.status == Status.error) {
            final errorMessage =
                state.errorMessage ?? "Failed for unknown reason";
            return Scaffold(
              body: Center(
                child: Text('Error...$errorMessage',
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
            );
          }
          if (state.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text('To DOs'),
              actions: [
                IconButton(
                  onPressed: () {
                    context.read<RootCubit>().signOut();
                  },
                  icon: const Icon(Icons.logout),
                )
              ],
            ),
            body: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'You are logged in as ${context.read<RootCubit>().state.user!.email}'),
                  ),
                  Text('You can add ${state.points} tasks'),
                  Expanded(
                    child: ListView.builder(
                      itemCount: toDoItemModels.length,
                      itemBuilder: (context, index) {
                        return ToDoWidget(toDoItemModel: toDoItemModels[index]);
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
