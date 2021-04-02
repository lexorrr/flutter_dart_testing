import 'package:flutter/material.dart';
import 'package:flutter_dart_testing/main.dart';
import 'package:flutter_driver/driver_extension.dart';

void main() {
  enableFlutterDriverExtension();

  runApp(MaterialApp(home: const MyApp(),));
}