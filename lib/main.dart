import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mygithubwebpage/pages/layoutpage.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'configure/navigation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode =
      await AdaptiveTheme.getThemeMode() ?? AdaptiveThemeMode.light;
  setupLocator();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode savedThemeMode;
  const MyApp({super.key, required this.savedThemeMode});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => AdaptiveTheme(
        light: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
            secondary: Colors.amber,
            brightness: Brightness.light,
          ),
        ),
        dark: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
            secondary: Colors.amber,
            background: Colors.black,
            brightness: Brightness.dark,
          ),
        ),
        initial: savedThemeMode,
        builder: (theme, darkTheme) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '''Ericsson's Webpage''',
          theme: theme,
          darkTheme: darkTheme,
          home: const LayoutTemplate(),
        ),
      ),
    );
  }
}
