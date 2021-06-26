import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/utils/routes.dart';

class Signuppage extends StatefulWidget {
  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  bool buttonChange = false;
  var _confirmpass;
  final _formKey = GlobalKey<FormState>();

  movetologin(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        buttonChange = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.logingRoutes);
      setState(() {
        buttonChange = false;
      });
    }
    return null;
  }

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
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        hintStyle: TextStyle(color: Colors.black26),
                        labelText: "Username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("Username can't be Empty");
                      }
                    },
                  ),
                  TextFormField(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "Enter Email Address",
                        hintStyle: TextStyle(color: Colors.black26),
                        labelText: "Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be Empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.black26),
                        labelText: "Password"),
                    validator: (value) {
                      value = _confirmpass;
                      if (value!.isEmpty) {
                        return "Password can't be empty";
                      } else if (value.length < 5) {
                        return "Password length should be atlast 6 ";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Confirm Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Confirm Password can't be empty";
                      } else if (value != _confirmpass) {
                        return "Password must be same as above";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () => movetologin(context),
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment.center,
            height: 50,
            width: buttonChange ? 50 : 140,
            //color: Colors.blueAccent,
            child: buttonChange
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                  )
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
                color: Colors.deepOrange),
          ),
        ),
      ]),
    );
  }
}
