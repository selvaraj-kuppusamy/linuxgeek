import 'package:flutter/material.dart';
class Commands extends StatefulWidget {
  const Commands({Key? key}) : super(key: key);

  @override
  State<Commands> createState() => _CommandsState();
}

class _CommandsState extends State<Commands> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Text("HELLO i AM COMMAND"),
      ),
    );
  }
}
