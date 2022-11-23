import 'package:get_it/get_it.dart';
import 'package:sovotest/app/domain/repositories/ads_repository.dart';
import 'package:sovotest/app/domain/repositories/todo_repository.dart';
import 'package:sovotest/features/cubit/root_cubit.dart';
import 'package:sovotest/features/todo/cubit/todo_cubit.dart';
import 'package:sovotest/remote_data_sources/todo_remote_data_source.dart';

final getIt = GetIt.instance;

void configureDependecies() {
  //cubits
  getIt.registerFactory(() => RootCubit());
  getIt.registerFactory(() => ToDoCubit(
        toDoRepository: getIt(),
      ));

  //repositories
  getIt.registerFactory(() => ToDoRepository(
        toDoRemoteDataSource: getIt(),
      ));
  getIt.registerFactory(() => AdsRepository(toDoRemoteDataSource: getIt()));

  //data sources
  getIt.registerFactory(() => ToDoRemoteDataSource());
}
