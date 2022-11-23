import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sovotest/app/domain/repositories/ads_repository.dart';
import 'package:sovotest/app/core/enums.dart';
import 'package:sovotest/app/injection_container.dart';
import 'package:sovotest/features/cubit/root_cubit.dart';
import 'package:sovotest/features/todo/cubit/todo_cubit.dart';
import 'package:sovotest/features/todo/pages/add_task_page.dart';
import 'package:sovotest/features/todo/widgets/todo_widget.dart';

class ToDoPage extends StatelessWidget {
  ToDoPage({
    Key? key,
  }) : super(key: key) {
    adManager.addAds(true, true, true);
  }

  final adManager = AdsRepository(toDoRemoteDataSource: getIt());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ToDoCubit>(
      create: (context) {
        return getIt()..getToDoItems();
      },
      child: BlocListener<ToDoCubit, ToDoState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? "Error";
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                errorMessage,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.red[200],
            ));
          }
        },
        child: BlocBuilder<ToDoCubit, ToDoState>(
          builder: (context, state) {
            final toDoItemModels = state.toDoItemModels;

            if (state.status == Status.loading) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
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
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (state.points > 0) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => AddTaskPage(
                            points: state.points,
                          )),
                    ));
                  }
                },
                child: const Icon(Icons.add),
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'You are logged in as ${context.read<RootCubit>().state.user!.email}'),
                  ),
                  Text('You can add ${state.points} tasks'),
                  if (state.points <= 0)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            adManager.showRewardedAd();
                          },
                          child: const Text('Watch add to gain points')),
                    )
                  else
                    const SizedBox(height: 40),
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
            );
          },
        ),
      ),
    );
  }
}
