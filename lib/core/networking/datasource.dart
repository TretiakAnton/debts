import 'package:cloud_firestore/cloud_firestore.dart';

class Datasource {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  FirebaseFirestore get firestore => _fireStore;
}
