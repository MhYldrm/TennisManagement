import 'package:cloud_firestore/cloud_firestore.dart';

class Members {

  String id, gender, name, age, phoneNumber;

  Members({
    required this.id,
    required this.gender,
    required this.name,
    required this.age,
    required this.phoneNumber
  });

  factory Members.fromSnapshot (DocumentSnapshot snapshot) {
    return Members(
       id: snapshot.id,
      gender: snapshot["gender"],
      name: snapshot["name"],
      age: snapshot["age"],
      phoneNumber: snapshot["phoneNumber"],
    );
  }



  factory Members.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Members(
      id: data?['id'],
      gender: data?['gender'],
      name: data?['name'],
      age: data?['age'],
      phoneNumber: data?['phoneNumber'],
    );
  }



}