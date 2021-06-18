import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/Pages/signup_page.dart';
import 'package:flutter_application_1/Pages/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//     home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/signup",
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeRoutes: (context) => Homepage(),
        MyRoutes.logingRoutes: (context) => Loginpage(),
        MyRoutes.signupRoutes: (context) => Signuppage(),
      },
    );
  }
}
