import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debts/core/errors/failure.dart';
import 'package:debts/core/networking/datasource.dart';
import 'package:debts/core/networking/key_manager.dart';
import 'package:debts/features/dashboard/models/debt_model.dart';

class DebtDetailsRepository {
  final Datasource datasource;

  DebtDetailsRepository({required this.datasource});

  Future<void> updateStatus({required int id}) async {
    try {
      final data = await datasource.firestore
          .collection(KeyManager.debtCollectionKey)
          .where('id', isEqualTo: id)
          .get();
      final docId = data.docs.first.id;
      final debt = Debt.fromJson(data.docs.first.data());
      await datasource.firestore
          .collection(KeyManager.debtCollectionKey)
          .doc(docId)
          .update({'statusId': debt.statusId + 1});
      print('object');
    } catch (e) {
      throw Failure(e);
    }
  }
}
