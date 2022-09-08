import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/modules/layout/Browse.dart';
import 'package:movieapp/modules/layout/Home.dart';
import 'package:movieapp/modules/layout/Homelayout.dart';
import 'package:movieapp/modules/layout/Search.dart';
import 'package:movieapp/modules/layout/Watch.dart';
import 'package:movieapp/modules/layout/typelistoffilms.dart';
import 'package:movieapp/my_theme.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await  Firebase.initializeApp(

  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,

      routes: {
  HomeScreen.routeName:(c)=>HomeScreen(),
        HomeLayoutScreen.routeName:(c)=>HomeLayoutScreen(),
        BrowseScreen.routeName:(c)=>HomeLayoutScreen(),


      },
    );
  }
}

