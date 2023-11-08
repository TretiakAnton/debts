import 'package:debts/core/networking/datasource.dart';
import 'package:debts/features/add_debt/add_debt_repository.dart';
import 'package:debts/features/add_debt/cubit/add_debt_cubit.dart';
import 'package:debts/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:debts/features/dashboard/dashboard_repository.dart';
import 'package:debts/features/debt_details/cubit/debt_details_cubit.dart';
import 'package:debts/features/debt_details/debt_details_repository.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

Future<void> initDi() async {
  ///utils
  sl.registerLazySingleton<Datasource>(() => Datasource());

  ///repos
  sl.registerLazySingleton<DashboardRepository>(
      () => DashboardRepository(datasource: sl()));
  sl.registerLazySingleton<AddDebtRepository>(
      () => AddDebtRepository(datasource: sl()));
  sl.registerLazySingleton<DebtDetailsRepository>(
      () => DebtDetailsRepository(datasource: sl()));

  ///cubits
  sl.registerFactory(() => DashboardCubit(repository: sl()));
  sl.registerFactory(() => AddDebtCubit(repository: sl()));
  sl.registerFactory(() => DebtDetailsCubit(repository: sl()));
}
