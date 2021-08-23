import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uthworld/pages/book.dart';
import 'package:uthworld/pages/home.dart';
import 'package:uthworld/pages/intro.dart';
import 'package:uthworld/uidata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroPage(),
      routes: <String, WidgetBuilder>{
        UIData.homePageRoute: (BuildContext context) => HomePage(),
        UIData.introPageRoute: (BuildContext context) => IntroPage(),
        UIData.bookPageRoute: (BuildContext context) => BookPage(),
      }
    );
  }
}

