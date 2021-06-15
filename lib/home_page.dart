import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 30;
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Demo 1"),
      )),
      body: Center(
        child: Container(
            child: Text("wellcome to $day days of flutter by hritthik")),
      ),
      drawer: Drawer(),
    );
  }
}
