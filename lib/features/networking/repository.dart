import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:debts/core/errors/failure.dart';
import 'package:debts/core/networking/key_manager.dart';
import 'package:debts/features/dashboard/models/debt_model.dart';

class Repository {
  final _fireStore = FirebaseFirestore.instance;

  Future<List<Debt>> getDebts() async {
    try {
      final data =
          await _fireStore.collection(KeyManager.debtCollectionKey).get();
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

  Future<List<Debt>> updateStatus({required int id}) async {
    try {
      final data =
          await _fireStore.collection(KeyManager.debtCollectionKey).get();
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
