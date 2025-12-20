import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

class AuthService {

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> signInWithEmail(

      String email, String password) async {

    final result = await _auth.signInWithEmailAndPassword(

        email: email, password: password);

    return result.user;

  }

  static Future<User?> signInWithGoogle() async {

    final googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) return null;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(

      accessToken: googleAuth.accessToken,

      idToken: googleAuth.idToken,

    );

    final result = await _auth.signInWithCredential(credential);

    return result.user;

  }

}