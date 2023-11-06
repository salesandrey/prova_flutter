import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tecnical_test/app_widget.dart';

import 'app_module.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}