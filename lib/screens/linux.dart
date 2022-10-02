import 'package:flutter/material.dart';
class Whylinux extends StatefulWidget {
  const Whylinux({Key? key}) : super(key: key);

  @override
  State<Whylinux> createState() => _WhylinuxState();
}

class _WhylinuxState extends State<Whylinux> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Text("HELLO i AM why linux"),
      ),
    );
  }
}
