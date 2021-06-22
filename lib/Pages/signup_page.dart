import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/utils/routes.dart';

class Signuppage extends StatefulWidget {
  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  bool buttonChange = false;
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset(
          "assets/images/signup_image.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "REGISTER",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  decoration: InputDecoration(
                      hintText: "Enter Username",
                      hintStyle: TextStyle(color: Colors.black26),
                      labelText: "Username"),
                ),
                TextFormField(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  decoration: InputDecoration(
                      hintText: "Enter Email Address",
                      hintStyle: TextStyle(color: Colors.black26),
                      labelText: "Email"),
                ),
                TextFormField(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.black26),
                      labelText: "Password"),
                ),
                TextFormField(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Confirm Password"),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () async {
            setState(() {
              buttonChange = true;
            });
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, MyRoutes.logingRoutes);
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment.center,
            height: 50,
            width: buttonChange ? 50 : 140,
            //color: Colors.blueAccent,
            child: buttonChange
                ? Icon(Icons.done, color: Colors.white,)
                : Text(
                    "SIGNUP",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
            decoration: BoxDecoration(
                borderRadius: buttonChange
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(12),
                color: Colors.blueAccent),
          ),
        ),
      ]),
    );
  }
}
