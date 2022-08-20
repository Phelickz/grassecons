import 'package:flutter/material.dart';
import 'package:grass_econs/app/app.dart';
import 'package:logger/logger.dart';

import 'app/locator/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// Sets logging level
  Logger.level = Level.debug;

  /// Register all the models and services before the app starts
  setupLocator();

  runApp(const GrassEcons());
}
