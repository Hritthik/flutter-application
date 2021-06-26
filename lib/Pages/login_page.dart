// import 'dart:html';
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

  final _formKey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        buttonChange = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        buttonChange = false;
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/welcome_image.png", fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
              namechange ? "Welcome to Flutter" : "Welcome $name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 5) {
                          return "password lantgh should be atlast 6 latter";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(buttonChange ? 50 : 10),
              child: InkWell(
                onTap: () => movetohome(context),
                // {
                // setState(() {
                //   buttonChange = true;
                // });
                // await Future.delayed(Duration(seconds: 1));
                // await Navigator.pushNamed(context, MyRoutes.homeRoutes);
                // setState(() {
                //   buttonChange = false;
                // });
                // }
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

                  // decoration: BoxDecoration(
                  //     //shape: buttonChange ? BoxShape.circle : BoxShape.rectangle,
                  //     borderRadius: BorderRadius.circular(buttonChange ? 50 : 10),
                  //     color: Colors.blueAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
