import 'package:debts/core/routing/pages.dart';
import 'package:debts/core/themes/themes.dart';
import 'package:debts/core/di/injection.dart' as di;
import 'package:debts/features/add_debt/cubit/add_debt_cubit.dart';
import 'package:debts/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:debts/features/debt_details/cubit/debt_details_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDi();
  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]);
  await Firebase.initializeApp(
    name: 'debts-f97cc',
    options: const FirebaseOptions(
      apiKey:
          'AAAA-hcD7t0:APA91bHNqJOjZ8dgIAQ2Clw-N_eVf1UvHF4fV-r7XL6ud8V5IARl767v_1dFTzpfagv_zxaYP5tFrNtSlr74U_wpt0wrK9JxJxhV14k9AYm68Ub7cXdUwDoiRfqpM0n9OP83Q5kSz1Pm',
      appId: '1:1074127957725:android:1b89b74e0f700f6b4bb534',
      messagingSenderId: '1074127957725',
      projectId: 'debts-f97cc',
    ),
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DashboardCubit>(create: (_) => di.sl<DashboardCubit>()),
        BlocProvider<AddDebtCubit>(create: (_) => di.sl<AddDebtCubit>()),
        BlocProvider<DebtDetailsCubit>(
            create: (_) => di.sl<DebtDetailsCubit>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: Pages.routes,
      initialLocation: Pages.toDashboardScreen,
    );
    return MaterialApp.router(
      theme: AppThemes.createLightTheme(context),
      darkTheme: AppThemes.createDarkTheme(context),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
