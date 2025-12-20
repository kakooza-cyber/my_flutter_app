import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SubmissionService {

  static final _firestore = FirebaseFirestore.instance;

  static Future<void> submitQuote({

    required String text,

    required String author,

    required String category,

  }) async {

    final user = FirebaseAuth.instance.currentUser;

    await _firestore.collection("submissions").add({

      "text": text,

      "author": author,

      "category": category,

      "userId": user?.uid,

      "createdAt": Timestamp.now(),

      "approved": false,

    });

  }

}