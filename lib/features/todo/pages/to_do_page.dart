import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sovotest/app/core/enums.dart';
import 'package:sovotest/app/injection_container.dart';
import 'package:sovotest/features/cubit/root_cubit.dart';
import 'package:sovotest/features/todo/cubit/to_do_cubit.dart';

class ToDoPage extends StatelessWidget {
  const ToDoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocProvider<ToDoCubit>(
    //   create: (context) => getIt(),
    //   child: BlocBuilder<ToDoCubit, ToDoState>(
    //     builder: (context, state) {
    //       // if (state.status == Status.error) {
    //   final errorMessage =
    //       state.errorMessage ?? "Failed for unknown reason";
    //   return Center(
    //     child: Text('Error...$errorMessage',
    //         style: Theme.of(context).textTheme.headlineMedium),
    //   );
    // }
    // if (state.status == Status.loading) {
    //   return const Center(
    //     child: CircularProgressIndicator(),
    //   );
    // }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Pets'),
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
            children: [Text('TO DO page')],
          ),
        ));
//         },
//       ),
//     );
  }
}
