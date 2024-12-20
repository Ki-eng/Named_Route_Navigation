import 'package:flutter/material.dart';
import 'aboutScreen.dart';
import 'myApp.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => GuessCountry(),
        '/about': (context) => Aboutscreen(),
      },

      initialRoute: '/',

      //home: GuessCountry(),

      theme: ThemeData(
        primaryColor: Colors.amberAccent,
        scaffoldBackgroundColor: Colors.blue.shade100,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo,
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo,
            centerTitle: true,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 24)),
        textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 24, color: Colors.white),
            headlineMedium: TextStyle(
                fontSize: 22,
                color: Colors.indigo,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
