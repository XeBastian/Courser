import 'package:courser/controllers/auth_controller.dart';
import 'package:courser/controllers/theme.dart';
import 'package:courser/views/auth/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(0, 43, 21, 21),
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();

  // Make firebase available to the whole project
  await Firebase.initializeApp().then(
    (value) => Get.put(
      AuthController(),
    ),
  );
  runApp(const Courser());
}

class Courser extends StatelessWidget {
  const Courser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CourserTheme.light(),
      darkTheme: CourserTheme.dark(),
      themeMode: ThemeMode.system,
      scrollBehavior: const CupertinoScrollBehavior(),
      home: const SplashScreen(),
    );
  }
}
