part of 'debt_details_cubit.dart';

@CopyWith()
class DebtDetailState {
  final Debt? selectedDebt;

  DebtDetailState({
    this.selectedDebt,
  });
}

class DebtDetailFailed extends DebtDetailState {
  final String error;

  DebtDetailFailed(this.error);

  DebtDetailFailed.fromState(DebtDetailState state, this.error)
      : super(
          selectedDebt: state.selectedDebt,
        );
}

class DebtDetailSuccess extends DebtDetailState {
  DebtDetailSuccess();

  DebtDetailSuccess.fromState(DebtDetailState state)
      : super(
          selectedDebt: state.selectedDebt,
        );
}

class DebtDetailLoading extends DebtDetailState {
  DebtDetailLoading();

  DebtDetailLoading.fromState(DebtDetailState state)
      : super(
          selectedDebt: state.selectedDebt,
        );
}
