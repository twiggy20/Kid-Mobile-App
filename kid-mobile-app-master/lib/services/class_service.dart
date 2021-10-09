import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:mobile_teacher_app/models/app_class.dart';

class ClassService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _classReference =
  FirebaseFirestore.instance.collection('classes');
}