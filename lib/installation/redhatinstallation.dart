import 'package:flutter/material.dart';

import '../utils/textstyle.dart';

class Redhatinstallation extends StatefulWidget {
  const Redhatinstallation({Key? key}) : super(key: key);

  @override
  State<Redhatinstallation> createState() => _RedhatinstallationState();
}

class _RedhatinstallationState extends State<Redhatinstallation> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    //var height = size.height;
    var width = size.width;

    return SafeArea(child: Scaffold(
      backgroundColor:  Colors.yellow,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('CentOS Installation'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children:  [
           const Text(
            'CentOS Installation in Hardware',
            style: darktext1,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/0.png',
            height: 150.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/0.png',
            height: 150.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/1.png',
            height: 250,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/1.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/2.png',
            height: 150.0,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/2.png',
            height: 150.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/3.png',
            height: 250,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/3.png',
            height: 150.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/4.png',
            height: 300,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/4.png',
            height: 150.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/5.png',
            height: 150.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/5.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/6.png',
            height: 150.0,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/6.png',
            height: 150.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/7.png',
            height: 150.0,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/7.png',
            height: 150.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/8.png',
            height: 150.0,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/8.png',
            height: 150.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/9.png',
            height: 150.0,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/9.png',
            height: 150.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/10.png',
            height: 150.0,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/10.png',
            height: 150.0,
            width: width,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'CentOS Linux',
            style: darktext2,
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],

      ),
    ));
  }
}
