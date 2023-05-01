import 'dart:developer';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/screens/dark_cv.dart';
import 'package:url_strategy/url_strategy.dart';

import 'configs/app.dart';
import 'configs/apptheme.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  await Future.delayed(const Duration(milliseconds: 250));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MainApp();
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: AppTheme.theme.copyWith(),
      locale: const Locale('en', 'IN'),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        App.init(context);
        log("Initialised");
        return child ?? const SizedBox();
      },
      home: const DarkCV(),
    );
  }
}
