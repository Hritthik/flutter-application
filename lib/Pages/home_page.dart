import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Demo 1"
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to 30 days of flutter"),
       ), 
      ),
      drawer: Drawer(
      ),
    );
  }
}
