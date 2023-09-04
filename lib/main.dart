import 'package:coding_with_tea_intro/src/features/screens/Home/index.dart';
import 'package:coding_with_tea_intro/src/features/screens/on_boarding_screen/index.dart';
import 'package:coding_with_tea_intro/src/features/screens/splash_screen/index.dart';
import 'package:coding_with_tea_intro/src/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen() ,
    );
  }
}

