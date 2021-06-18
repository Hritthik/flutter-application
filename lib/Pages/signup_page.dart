import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
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
        )
      ]),
    );
  }
}
