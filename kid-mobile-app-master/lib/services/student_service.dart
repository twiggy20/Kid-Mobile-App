

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_app/model/student.dart';

class StudentService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _studentReference =
  FirebaseFirestore.instance.collection('students');

  Future addStudent(Student student) async {
    print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
    try {
      DocumentReference newStudent= await _studentReference.add(student.toJson());
      print(newStudent.id);
    } catch (e) {
      print(e.toString());
    }
  }
}