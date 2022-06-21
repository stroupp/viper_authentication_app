import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginUser {
  TextEditingController mail = TextEditingController();
  TextEditingController password = TextEditingController();

  final _auth = FirebaseAuth.instance;

  Future<bool> logIn() async {
    try {
       await _auth.signInWithEmailAndPassword(
          email: mail.text, password: password.text);
        return true;

    } catch (e) {
      print(e);
      return false;
    }
  }
}
