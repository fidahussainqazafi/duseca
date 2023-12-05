import 'package:duseca/controller/checkbox_controller.dart';
import 'package:duseca/controller/controller.dart';
import 'package:duseca/controller/radio_controller.dart';
import 'package:duseca/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(390,844),
        builder: (context,child){
          return MultiProvider(providers: [
            ChangeNotifierProvider(create: (context) => IsChecked()),
            ChangeNotifierProvider(create: (context) => RadioController()),
            ChangeNotifierProvider(create: (context) => PasswordVisibilityController()),

          ],


    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Duseca',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      home: const SignUp(),
    ));
    }

    );
  }
  }