import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts/features/dashboard/models/debt_model.dart';
import 'package:debts/features/debt_details/debt_details_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'debt_details_cubit.g.dart';

part 'debt_details_state.dart';

class DebtDetailsCubit extends Cubit<DebtDetailState> {
  DebtDetailsCubit({required this.repository}) : super(DebtDetailState());

  final DebtDetailsRepository repository;

  void setSelected(Debt debt) {
    emit(state.copyWith(selectedDebt: debt));
  }

  void _updateStatus() {
    final debt = state.selectedDebt;
    if (debt == null) {
      return;
    }
    emit(state.copyWith(
      selectedDebt: debt.copyWith(statusId: debt.statusId + 1),
    ));
  }

  Future<void> updateDebts() async {
    _updateStatus();
    try {
      await repository.updateStatus(id: state.selectedDebt?.id ?? 0);
    } catch (e) {
      emit(DebtDetailFailed.fromState(state, e.toString()));
    }
  }
}
