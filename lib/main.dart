import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/home_page.dart/bottomnav.dart';
import 'package:market/home_page.dart/home_page.dart';
import 'package:market/login_pages/login_page.dart';
import 'package:market/provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (context) => HomeProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF9F9F9),
      ),
      home: LoginPage(),
    );
  }
}
