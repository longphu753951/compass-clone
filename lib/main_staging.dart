import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import 'config/dependencies.dart';
import 'main.dart';

void main() {
  Logger.root.level = Level.ALL;

  runApp(MultiBlocProvider(providers: providersRemote, child: const MyApp()));
}