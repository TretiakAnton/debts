import 'package:debts/features/add_debt/add_debt_screen.dart';
import 'package:debts/features/dashboard/dashboard_screen.dart';
import 'package:debts/features/debt_details/debt_details_screen.dart';
import 'package:go_router/go_router.dart';

abstract class Pages {
  static const toDashboardScreen = '/toDashboardScreen';
  static const toAddDebtScreen = '/toAddDebtScreen';
  static const toDebtDetails = '/toDebtDetails';

  static final routes = [
    GoRoute(
      path: toDashboardScreen,
      builder: (_, __) => const DashboardScreen(),
    ),
    GoRoute(
      path: toAddDebtScreen,
      builder: (_, __) => const AddDebtScreen(),
    ),
    GoRoute(
      path: toDebtDetails,
      builder: (_, __) => const DebtDetailsScreen(),
    ),
  ];
}
