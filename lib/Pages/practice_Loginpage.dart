// import 'package:flutter/material.dart';
// //import 'package:flutter_application_1/Pages/home_page.dart';
// import 'package:flutter_application_1/Pages/utils/routes.dart';
// // import 'package:flutter_application_1/Pages/home_page.dart';

// class PracticeLoginPage extends StatefulWidget {
//   PracticeLoginPage({Key? key}) : super(key: key);

//   @override
//   _PracticeLoginPageState createState() => _PracticeLoginPageState();
// }

// class _PracticeLoginPageState extends State<PracticeLoginPage> {
//   String name = "";
//   bool _buttonChange = false;
//   final _formkey = GlobalKey<FormState>();

//   movetoHome(BuildContext context) async {
//     if (_formkey.currentState!.validate()) {
//       setState(() {
//         _buttonChange = true;
//       });
//       await Future.delayed(Duration(seconds: 1));
//       await Navigator.pushNamed(context, MyRoutes.logingRoutes);
//       setState(() {
//         _buttonChange = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Image.asset(
//               "assets/images/welcome_image.png",
//               fit: BoxFit.cover,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Center(
//               child: Text(
//                 "Welcome $name",
//                 style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blueGrey,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
//               child: Form(
//                 key: _formkey,
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       decoration: InputDecoration(
//                           hintText: "Enter your Name",
//                           hintStyle: TextStyle(fontSize: 20),
//                           labelText: "Username",
//                           labelStyle: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 30,
//                           )),
//                       onChanged: (value) {
//                         name = value;
//                         setState(() {});
//                       },
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return ("Username can't be empty");
//                         }
//                         return null;
//                       },
//                     ),
//                     TextFormField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           hintText: "Enter your password",
//                           hintStyle: TextStyle(
//                             fontSize: 20,
//                           ),
//                           labelText: "Password",
//                           labelStyle: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 30,
//                           )),
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return ("Password can't be empty");
//                         } else if (value.length > 5) {
//                           return ("Password length should be atlast 6");
//                         }
//                         return null;
//                       },
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Material(
//               color: Colors.deepOrange,
//               borderRadius: BorderRadius.circular(_buttonChange ? 50 : 10),
//               child: InkWell(
//                 onTap: () => movetoHome(context),
//                 child: AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   height: 50,
//                   width: _buttonChange ? 50 : 130,
//                   child: Center(
//                     child: _buttonChange
//                         ? Icon(
//                             Icons.done,
//                             color: Colors.white,
//                           )
//                         : Text(
//                             "LOGIN",
//                             style: TextStyle(
//                               fontSize: 23,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
