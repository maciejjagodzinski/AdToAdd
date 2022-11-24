import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sovotest/app/core/enums.dart';
import 'package:sovotest/app/injection_container.dart';
import 'package:sovotest/features/cubit/root_cubit.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RootCubit>(
      create: (context) {
        return getIt();
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
        child: Scaffold(
          body: BlocBuilder<RootCubit, RootState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.isCreatingAccount
                          ? 'Create account'
                          : 'Please sign in'),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            hintText: 'Enter your e-mail'),
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Enter your passsword'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (state.isCreatingAccount) {
                            await context
                                .read<RootCubit>()
                                .createUserWithEmailAndPassword(
                                    emailController.text,
                                    passwordController.text);
                          } else {
                            await context
                                .read<RootCubit>()
                                .signInWithEmailAndPassword(
                                    emailController.text,
                                    passwordController.text);
                          }
                        },
                        child: Text(
                            state.isCreatingAccount ? 'Register' : 'Log In'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (state.isCreatingAccount) ...[
                        TextButton(
                          onPressed: () {
                            context.read<RootCubit>().signInUserState();
                          },
                          child: const Text('Go back to login page'),
                        ),
                      ],
                      if (state.isCreatingAccount == false) ...[
                        TextButton(
                          onPressed: () {
                            context.read<RootCubit>().createUserState();
                          },
                          child: const Text('Create Account'),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
