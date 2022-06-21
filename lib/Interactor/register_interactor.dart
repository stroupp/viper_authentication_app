import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'dart:convert';

class RegisterUser {
  TextEditingController mail = TextEditingController();
  TextEditingController password = TextEditingController();

  bool canRegister = false;
  final _auth = FirebaseAuth.instance;

  Future<bool> signUp() async {

      try {
         await _auth.createUserWithEmailAndPassword(
            email: mail.text, password: password.text);
         return true;
        }
       on FirebaseAuthException catch (e) {
        print(e);
        return false;
      }
    }


}


