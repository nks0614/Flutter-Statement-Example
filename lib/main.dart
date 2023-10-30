import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statement_example/Presentation/ChangedImageCubitScreen.dart';
import 'package:flutter_statement_example/test_page.dart';

import 'Observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = Observer();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: Scaffold(
        body: ChangedImageCubitScreen(),
      ),
    );
  }
}