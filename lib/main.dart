import 'package:flutter/material.dart';
import 'package:store_app/utils/app_colors.dart';
import 'package:store_app/utils/app_constants.dart';
import 'package:store_app/views/screens/authentication_screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: ThemeData(
        // colorScheme za primarnu i sekundarnu boju aplikacije
        colorScheme: ColorScheme.light(
          primary: AppColors.cerulean,
          secondary: AppColors.sweetPeony,
          surface: Colors.white,
        ),

        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
