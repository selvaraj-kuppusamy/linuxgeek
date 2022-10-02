import 'package:flutter/material.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Text("HELLO i AM About us"),
      ),
    );
  }
}
