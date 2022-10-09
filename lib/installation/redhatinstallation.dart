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
            'assets/installation/centos.png',
            height: 150.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/centos.png',
            height: 260.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/U.png',
            height: 170.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/U.png',
            height: 400.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/O.png',
            height: 100.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/O.png',
            height: 100.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/3.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/3.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/4.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/4.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/5.png',
            height: 300.0,
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
            height: 350.0,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/6.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/7.png',
            height: 400.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/7.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/8.png',
            height: 400.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/8.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/9.png',
            height: 100.0,
            width: 270.0,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/9.png',
            height: 100.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/10.PNG',
            height: 100.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/10.PNG',
            height: 100.0,
            width: width,
          ),

          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/11.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/11.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/12.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/12.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/13.png',
            height: 200.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/13.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/14.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/14.png',
            height: 500.0,
            width: width,
          ),

          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/15.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/15.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/16.png',
            height: 350.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/16.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/17.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/17.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/18.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/18.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/19.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/19.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/20.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/20.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/21.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/21.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/22.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/22.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/23.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/23.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/24.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/24.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/25.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/25.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/26.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/26.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/27.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/27.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/28.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/28.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/29.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/29.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/30.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/30.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/31.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/31.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/32.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/32.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/33.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/33.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/34.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/34.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/35.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/35.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/36.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/36.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/37.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/37.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/38.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/38.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/39.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/39.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/40.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/40.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/41.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/41.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/42.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/42.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/43.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/43.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/44.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/44.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/45.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/45.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/46.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/46.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/47.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/47.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/48.png',
            height: 250.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/48.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/49.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/49.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/50.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/50.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/51.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/51.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/52.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/52.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/53.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/53.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/54.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/54.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/55.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/55.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/56.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/56.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/57.png',
            height: 30.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/57.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/58.png',
            height: 30.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/58.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/59.png',
            height: 30.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/59.png',
            height: 500.0,
            width: width,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
            'assets/installation/redhatinstallation/60.png',
            height: 300.0,
            width: width,
          )
              : Image.asset(
            'assets/installation/redhatinstallation/60.png',
            height: 500.0,
            width: width,
          ),



        ],

      ),
    ));
  }
}
