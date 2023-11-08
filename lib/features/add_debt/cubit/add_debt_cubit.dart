import 'dart:math';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts/features/add_debt/add_debt_repository.dart';
import 'package:debts/features/dashboard/models/debt_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_debt_cubit.g.dart';

part 'add_debt_state.dart';

class AddDebtCubit extends Cubit<AddDebtState> {
  AddDebtCubit({required this.repository}) : super(AddDebtState());

  final AddDebtRepository repository;

  void startChanged(String value) {
    emit(state.copyWith(startDate: value));
  }

  void endChanged(String value) {
    emit(state.copyWith(endDate: value));
  }

  void titleChanged(String value) {
    emit(state.copyWith(title: value));
  }

  void descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  void amountChanged(String value) {
    emit(state.copyWith(amount: value));
  }

  void nameChanged(String value) {
    emit(state.copyWith(name: value));
  }

  void contactsChanged(String value) {
    emit(state.copyWith(contacts: value));
  }

  Future<void> postDebt() async {
    emit(AddDebtLoading.fromState(state));
    try {
      final debt = Debt(
        createdAt: state.startDate,
        endAt: state.endDate,
        label: state.title,
        description: state.description,
        amount: double.tryParse(state.amount) ?? 0,
        statusId: 1,
        id: Random().nextInt(10000),
        debtName: state.name,
        debtContacts: state.contacts,
      );
      await repository.postDebt(debt: debt);
      emit(AddDebtSuccess.fromState(state));
    } catch (e) {
      emit(AddDebtFailed.fromState(state, e.toString()));
    }
  }
}
