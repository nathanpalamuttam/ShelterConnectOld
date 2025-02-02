import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//Firebase
final FirebaseAuth auth = FirebaseAuth.instance;
final Firestore db = Firestore.instance;

//Colors
final Color shelterGreen = Color(0xFF39B54A);

//Gradients
final LinearGradient blueGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF00E453),
    Color(0xFF00DE51),
    Color(0xFF00DE51),
    Color(0xFF03D951),
//    Color(0xFF9097FF),
//    Color(0xFF9097FF),
//    Color(0xFF9097FF),
//    Color(0xFF9097FF),

//    Color(0xFF3B96FF),
//    Color(0xFF2E8FFF),
//    Color(0xFF1672DB),
//    Color(0xFF025BC2),
  ],
  stops: [0.1, 0.4, 0.7, 0.9],
);

//Text styles
final TextStyle defaultTextStyle = TextStyle(color: Colors.white);
