part of 'add_debt_cubit.dart';

@CopyWith()
class AddDebtState {
  final String title;
  final String description;
  final String startDate;
  final String endDate;
  final String amount;
  final String name;
  final String contacts;

  AddDebtState({
    this.title = '',
    this.description = '',
    this.startDate = '',
    this.endDate = '',
    this.amount = '',
    this.name = '',
    this.contacts = '',
  });
}

class AddDebtFailed extends AddDebtState {
  final String error;

  AddDebtFailed(this.error);

  AddDebtFailed.fromState(AddDebtState state, this.error)
      : super(
          title: state.title,
          description: state.description,
          startDate: state.startDate,
          endDate: state.endDate,
          amount: state.amount,
          name: state.name,
          contacts: state.contacts,
        );
}

class AddDebtSuccess extends AddDebtState {
  AddDebtSuccess();

  AddDebtSuccess.fromState(AddDebtState state)
      : super(
          title: state.title,
          description: state.description,
          startDate: state.startDate,
          endDate: state.endDate,
          amount: state.amount,
          name: state.name,
          contacts: state.contacts,
        );
}

class AddDebtLoading extends AddDebtState {
  AddDebtLoading();

  AddDebtLoading.fromState(AddDebtState state)
      : super(
          title: state.title,
          description: state.description,
          startDate: state.startDate,
          endDate: state.endDate,
          amount: state.amount,
          name: state.name,
          contacts: state.contacts,
        );
}
