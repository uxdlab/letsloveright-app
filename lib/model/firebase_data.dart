import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDataProvider {
  FirebaseDataProvider();

  Future<DocumentSnapshot> getData() async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc("uwIRxVEoUtWD0aVamnykU85v1lr1")
        .get();
  }
}
