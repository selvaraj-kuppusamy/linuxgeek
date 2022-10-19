import 'package:flutter/material.dart';

class Ubuntuinstallation extends StatefulWidget {
  const Ubuntuinstallation({Key? key}) : super(key: key);

  @override
  State<Ubuntuinstallation> createState() => _UbuntuinstallationState();
}

class _UbuntuinstallationState extends State<Ubuntuinstallation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Ubuntu Installation'),
          centerTitle: true,
        ),

      ),
    );
  }
}
