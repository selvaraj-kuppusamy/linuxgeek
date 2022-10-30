import 'package:flutter/material.dart';

class Whylinux extends StatefulWidget {
  const Whylinux({Key? key}) : super(key: key);

  @override
  State<Whylinux> createState() => _WhylinuxState();
}

class _WhylinuxState extends State<Whylinux> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Why Linux?'),
          centerTitle: true,
        ),
        body: ListView(
          children: [

          ],
        ),
      ),
    );
  }
}
