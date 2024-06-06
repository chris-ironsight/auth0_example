import 'package:flutter/material.dart';
import 'package:auth0_example/example_app.dart';
import 'package:global_configuration/global_configuration.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GlobalConfiguration().loadFromAsset("app_settings.json");

  runApp(const ExampleApp());
}
