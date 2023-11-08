import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debts/core/errors/failure.dart';
import 'package:debts/core/networking/datasource.dart';
import 'package:debts/core/networking/key_manager.dart';
import 'package:debts/features/dashboard/models/debt_model.dart';

class AddDebtRepository {
  final Datasource datasource;

  AddDebtRepository({required this.datasource});

  Future<void> postDebt({required Debt debt}) async {
    try {
      await datasource.firestore
          .collection(KeyManager.debtCollectionKey)
          .add(debt.toJson());
    } catch (e) {
      throw Failure(e);
    }
  }
}
