import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts/features/dashboard/dashboard_repository.dart';
import 'package:debts/features/dashboard/models/debt_model.dart';
import 'package:debts/features/networking/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dashboard_cubit.g.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit({required this.repository}) : super(DashboardState());

  final DashboardRepository repository;

  List<Debt> get debts {
    return state.debts?.where((element) {
          return element.label.contains(state.search) ||
              element.statusTitle.contains(state.search);
        }).toList() ??
        [];
  }

  void searchChanged(String value) {
    emit(state.copyWith(search: value));
  }

  Future<void> init() async {
    emit(DashboardLoading.fromState(state));
    try {
      await getDebts();
      emit(DashboardSuccess.fromState(state.copyWith(isInited: true)));
    } catch (e) {
      emit(DashboardFailed.fromState(state, e.toString()));
    }
  }

  Future<void> getDebts() async {
    emit(DashboardLoading.fromState(state));
    try {
      final response = await repository.getDebts();
      emit(DashboardSuccess.fromState(state.copyWith(debts: response)));
    } catch (e) {
      emit(DashboardFailed.fromState(state, e.toString()));
    }
  }
}
