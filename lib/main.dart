import 'package:bjj_members_management/firebase_options.dart';
import 'package:bjj_members_management/presentation/presentation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BJJ Membership Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: Routes.router,
    );
  }
}
