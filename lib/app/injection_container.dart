import 'package:get_it/get_it.dart';
import 'package:sovotest/features/cubit/root_cubit.dart';

final getIt = GetIt.instance;

void configureDependecies() {
  //cubits
  getIt.registerFactory(() => RootCubit());

  //repositories

  //data sources
}
