import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debts/core/errors/failure.dart';
import 'package:debts/core/networking/datasource.dart';
import 'package:debts/core/networking/key_manager.dart';
import 'package:debts/features/dashboard/models/debt_model.dart';

class DashboardRepository {
  final Datasource datasource;

  DashboardRepository({required this.datasource});

  Future<List<Debt>> getDebts() async {
    try {
      final data = await datasource.firestore
          .collection(KeyManager.debtCollectionKey)
          .get();
      final List<Debt> debts = [];
      for (var element in data.docs) {
        final json = element.data();
        debts.add(Debt.fromJson(json));
      }
      return debts;
    } catch (e) {
      throw Failure(e);
    }
  }
}
