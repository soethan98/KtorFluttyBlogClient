import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ktorfluttyblog_client/app.dart';
import 'package:ktorfluttyblog_client/di/injectable.dart';

void main() {
  configureDependencies();
  runApp(const ProviderScope(child: MyApp()));
}
