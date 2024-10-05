// service/firebase/data/firestore_service.dart

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_shop/service/database/database_services.dart';

class FirestoreService extends DatabaseServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // add data to fireStore database
  @override
  addData({required String path, required Map<String, dynamic> data}) async {

    try {
      // get reference
      final reference = await _firestore.collection(path);

      // add data
      await reference.add(data);
      log('data added successfully');
    }
    // catch firebase exception
    catch (e) {
      log(e.toString());
    }
  }
}
