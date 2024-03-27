import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  Stream<User?> get authStateChanges => _firebaseauth.authStateChanges();
  final FirebaseAuth _firebaseauth = FirebaseAuth.instance;
  User? get getCurrentUser => _firebaseauth.currentUser;
  Future createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    return await _firebaseauth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future signInWithEmailAndPassword(
      {required String email, required String password}) async {
    await _firebaseauth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    await _firebaseauth.signOut();
  }
}
