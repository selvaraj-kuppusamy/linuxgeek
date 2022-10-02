import 'package:flutter/material.dart';
import 'package:linuxgeek/installation/centosinstallation.dart';
import 'package:linuxgeek/installation/redhatinstallation.dart';
import 'package:linuxgeek/installation/ubuntuinstallation.dart';


class Installation extends StatefulWidget {
  const Installation({Key? key}) : super(key: key);

  @override
  State<Installation> createState() => _InstallationState();
}

class _InstallationState extends State<Installation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffe6f2ff),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Installation'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Ubuntuinstallation()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(
                      20,
                    ),
                    color: Colors.white,
                    child: Image.asset(
                      'assets/installation/ubuntu.png',
                      height: 150.0,
                      width: 270.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Redhatinstallation()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(
                      20,
                    ),
                    color: Colors.white,
                    child: Image.asset(
                      'assets/installation/redhat.png',
                      height: 150.0,
                      width: 270.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0,),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Centosinstallation()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(
                      20,
                    ),
                    color: Colors.white,
                    child: Image.asset(
                      'assets/installation/centos.png',
                      height: 150.0,
                      width: 270.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    ));
  }
}
