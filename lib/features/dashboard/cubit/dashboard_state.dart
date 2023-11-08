part of 'dashboard_cubit.dart';

@CopyWith()
class DashboardState {
  final bool isInited;
  final List<Debt>? debts;
  final String search;

  DashboardState({
    this.isInited = false,
    this.debts,
    this.search = '',
  });
}

class DashboardFailed extends DashboardState {
  final String error;

  DashboardFailed(this.error);

  DashboardFailed.fromState(DashboardState state, this.error)
      : super(
          isInited: state.isInited,
          debts: state.debts,
          search: state.search,
        );
}

class DashboardSuccess extends DashboardState {
  DashboardSuccess();

  DashboardSuccess.fromState(DashboardState state)
      : super(
          isInited: state.isInited,
          debts: state.debts,
          search: state.search,
        );
}

class DashboardLoading extends DashboardState {
  DashboardLoading();

  DashboardLoading.fromState(DashboardState state)
      : super(
          isInited: state.isInited,
          debts: state.debts,
          search: state.search,
        );
}
