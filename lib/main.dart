import 'package:bjj_members_management/di/di.dart';
import 'package:bjj_members_management/di/injected_bloc_provider.dart';
import 'package:bjj_members_management/features/classes/classes_cubit.dart';
import 'package:bjj_members_management/features/features.dart';
import 'package:bjj_members_management/firebase_options.dart';
import 'package:bjj_members_management/presentation/presentation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupDependencies(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        InjectedBlocProvider<LoginCubit>(),
        InjectedBlocProvider<ClassesCubit>(),
        InjectedBlocProvider<ClubCubit>(),
        InjectedBlocProvider<MemberCubit>(),
      ],
      child: MaterialApp.router(
        title: 'BJJ Membership Management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: Routes.router,
      ),
    );
  }
}
