
import 'package:flutter/material.dart';

class Centosinstallation extends StatefulWidget {
  const Centosinstallation({Key? key}) : super(key: key);

  @override
  State<Centosinstallation> createState() => _CentosinstallationState();
}

class _CentosinstallationState extends State<Centosinstallation> {
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
          title: const Text('CentOS Installation'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Text(
              'CentOS Installation in Hardware',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centos.png',
              height: 150.0,
              width: 270.0,
            ): Image.asset(
              'assets/installation/centos.png',
              height: 150.0,
              width: width,),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'CentOS Linux',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'CentOS is a Linux distribution that provides a free and open-source '
              'community-supported computing platform, '
              'functionally compatible with its upstream source, Red Hat Enterprise Linux.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'System requirements',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              '\u27A4\t 20GB free disk space.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const Text(
              '\u27A4\t Virtual Box on the System.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const Text(
              '\u27A4\t CentOS ISO File.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const Text(
              '\u27A4\t A minimum of 4 GB RAM is recommended.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const Text(
              '\u27A4\t One core or thread for each virtualized CPU and one for the host.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Step 1 :- Download CentOS Linux ISO',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Proceed to CentOS official site. then go to downloads.'
              ' Thereafter, download the CentOS Linux ISO file for free. '
              'There are several CentOS Linux versions are there. '
              'In my case, I was choose to CentOS Linux 9 ISO file.Approximate, '
              'CentOS ISO file size is 9GB to download.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),


             orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/0.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/0.png',
              height: 500,
              width: width,),


            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Step 2:- sdfewrbfgoire',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),


            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/2.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/2.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/3.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/3.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),

            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/4.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/4.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/5.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/5.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/6.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/6.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/7.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/7.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/8.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/8.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/9.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/9.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/10.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/10.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/11.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/11.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/12.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/12.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/13.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/13.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/14.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/14.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/15.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/15.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/16.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/16.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/17.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/17.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/18.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/18.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/19.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/19.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/20.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/20.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/21.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/21.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/22.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/22.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/23.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/23.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/24.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/24.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/25.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/25.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/26.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/26.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/27.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/27.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/28.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/28.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/29.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/29.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/30.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/30.png',
              height: 500.0,
              width: width,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait?
            Image.asset(
              'assets/installation/centosinstallation/31.png',
              height: 250.0,
              width: width,
            ): Image.asset(
              'assets/installation/centosinstallation/31.png',
              height: 500.0,
              width: width,),

          ],
        ),
      ),
    );
  }
}
