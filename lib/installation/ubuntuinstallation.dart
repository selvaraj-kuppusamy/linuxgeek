import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

    Future<void> ubuntu(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    Future<void> balenaetcher(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri ubuntuwebsite = Uri(scheme: 'https', host: 'www.centos.org');
    final Uri balenaetcherboxwebsite =
        Uri(scheme: 'https', host: 'www.balena.io');
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
                    'assets/installation/ubuntuinstallation/ubuntuserver.png',
                    height: 150.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/ubuntuserver.png',
                    height: 250.0,
                    width: width,
                  ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Ubuntu Linux',
              style: darktext2,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Ubuntu',
                  style: bluetext1,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            ubuntu(ubuntuwebsite);
                          }),
                        }),
              const TextSpan(
                text:
                    '\tis a Linux distribution based on Debian and composed mostly of free and open-source software.'
                    ' Ubuntu is officially released in three editions: Desktop, Server, '
                    'and Core for Internet of things devices and robots. '
                    'All the editions can run on the computer alone, or in a virtual machine.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'System requirements',
              style: darktext2,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              '\u27A4\t 20GB free disk space.',
              style: normaltext1,
            ),
            const SizedBox(
              height: 5.0,
            ),
            // const Text(
            //   '\u27A4\t Virtual Box on the System.',
            //   style: TextStyle(
            //       fontSize: 15,
            //       fontWeight: FontWeight.w400,
            //       color: Colors.black),
            // ),
            RichText(
                text: TextSpan(children: [
              const TextSpan(
                text: '\u27A4\t',
                style: normaltext1,
              ),
              TextSpan(
                  text: 'BalenaEtcher',
                  style: bluetext1,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            balenaetcher(balenaetcherboxwebsite);
                          }),
                        }),
              const TextSpan(
                text: '\ton the System.',
                style: normaltext1,
              ),
            ])),

            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t CentOS ISO File.',
              style: normaltext1,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t A minimum of 4 GB RAM is recommended.',
              style: normaltext1,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t One core or thread for each virtualized CPU and one for the host.',
              style: normaltext1,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Step 1 :- Download Ubuntu Server ISO',
              style: darktext2,
            ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                text: TextSpan(children: [
              const TextSpan(
                text: 'Proceed to\t',
                style: normaltext1,
              ),
              TextSpan(
                  text: 'Ubuntu official site',
                  style: bluetext1,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            ubuntu(ubuntuwebsite);
                          }),
                        }),
              const TextSpan(
                text: '.\tthen go to downloads. Thereafter, '
                    'download the Ubuntu Server ISO file. Choose lastest Ubuntu Server.',
                style: normaltext1,
              ),
            ])),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/0.PNG',
                    height: 200.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/0.PNG',
                    height: 350.0,
                    width: width,
                  ),
            const Text(
              'In my case, I choose Ubuntu 22.04 LTS.',
              style: normaltext1,
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
            const SizedBox(
              height: 10.0,
            ),
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
