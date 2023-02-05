
import 'package:dumplingdelights/Dashboard/DashboardScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/cupertino.dart';
//import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ProfilePage(),
      themeMode: ThemeMode.system,
      //theme: MyTheme.lightTheme(context),
      //darkTheme: MyTheme.darkTheme(context),
      //initialRoute: "/login",
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/dashboard":(context)=>DashboardScreen(),


      },
    );
  }
}