import 'package:flutter/material.dart';

import '../utils/textstyle.dart';

class Ubuntuinstallation extends StatefulWidget {
  const Ubuntuinstallation({Key? key}) : super(key: key);

  @override
  State<Ubuntuinstallation> createState() => _UbuntuinstallationState();
}

class _UbuntuinstallationState extends State<Ubuntuinstallation> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    //var height = size.height;
    var width = size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Ubuntu Installation'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Text(
              'Ubuntu Server Installation in Hardware',
              style: darktext1,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/2.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/2.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/3.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/3.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/4.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/4.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/5.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/5.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/6.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/6.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/7.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/7.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/8.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/8.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/9.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/9.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/10.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/10.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/11.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/11.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/12.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/12.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/13.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/13.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/14.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/14.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/15.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/15.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/16.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/16.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/17.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/17.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/18.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/18.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/19.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/19.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/20.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/20.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/21.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/21.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/22.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/22.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/23.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/23.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/24.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/24.png',
              height: 500.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/ubuntuinstallation/25.png',
              height: 250.0,
              width: width,
            )
                : Image.asset(
              'assets/installation/ubuntuinstallation/25.png',
              height: 500.0,
              width: width,
            ),








          ],
        ),
      ),
    );
  }
}
