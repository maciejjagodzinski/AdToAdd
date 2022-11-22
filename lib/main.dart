import 'package:flutter/material.dart';
import 'package:sovotest/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sovotest/app/injection_container.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependecies();
  runApp(const MyApp());
}
