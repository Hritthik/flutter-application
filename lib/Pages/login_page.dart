import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool namechange = true;
  bool buttonChange = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
          SizedBox(
            height: 20,
          ),
          Text(
            namechange ? "Welcome to Flutter" : "Welcome $name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "User name"),
                    onChanged: (value) {
                      name = value;
                      setState(() {
                        namechange = false;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          InkWell(
            onTap: () async {
              setState(() {
                buttonChange = true;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.homeRoutes);
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: 50,
              width: buttonChange ? 50 : 130,
              //color: Colors.blueAccent,
              alignment: Alignment.center,
              child: buttonChange
                  ? Icon(Icons.done, color: Colors.white)
                  : Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

              decoration: BoxDecoration(
                  //shape: buttonChange ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(buttonChange ? 50 : 10),
                  color: Colors.blueAccent),
            ),
          ),
          // ElevatedButton(
          //   child: Text(
          //     "Sign in",
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //       fontSize: 25,
          //     ),
          //   ),
          //   style: TextButton.styleFrom(minimumSize: Size(100, 50)),
          //   // style:
          //   //     TextButton.styleFrom(textStyle: TextStyle(color: Colors.black)),
          //   onPressed: () {
          //     print("signin successfull");
          //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
          //     //Navigator.push(
          //     //context, MaterialPageRoute(builder: (context) => Homepage()));
          //   },
          // ),
          //
        ],
      ),
    );
  }
}
