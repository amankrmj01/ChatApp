import 'package:cloud_firestore/cloud_firestore.dart';

class ChatServices
{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<Map<String,dynamic>>> getUserStream(){
    return _firestore.collection("AllUsers").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final user = doc.data();
        return user;
      }).toList();
    });
  }
}