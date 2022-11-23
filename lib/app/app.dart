import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sovotest/app/core/enums.dart';
import 'package:sovotest/app/injection_container.dart';
import 'package:sovotest/features/cubit/root_cubit.dart';
import 'package:sovotest/features/login/pages/login_page.dart';
import 'package:sovotest/features/todo/pages/todo_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sovo test app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RootPage());
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RootCubit>(
      create: (context) {
        return getIt()..start();
      },
      child: BlocListener<RootCubit, RootState>(
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
        child: BlocBuilder<RootCubit, RootState>(
          builder: (context, state) {
            final user = state.user;

            if (state.status == Status.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (user == null) {
              return LoginPage();
            }
            return ToDoPage();
          },
        ),
      ),
    );
  }
}
