import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_cv/screens/dark_cv.dart';

import 'configs/app.dart';
import 'configs/apptheme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  await Future.delayed(const Duration(seconds: 1));
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
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        App.init(context);
        return child ?? const SizedBox();
      },
      home: const DarkCV(),
    );
  }
}
