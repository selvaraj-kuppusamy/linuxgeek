import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';

class Debian extends StatefulWidget {
  const Debian({Key? key}) : super(key: key);

  @override
  State<Debian> createState() => _DebianState();
}

class _DebianState extends State<Debian> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;

    Future<void> debain(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri debainwebsite = Uri(scheme: 'https', host: 'www.debain.org');
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Debian'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/distros/debian/debianlogo.png',
                    height: 200.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/distros/debian/debianlogo.png',
                    height: 200.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
              TextSpan(
                  text: 'Debian',
                  style: bluetext1,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            debain(debainwebsite);
                          }),
                        }),
              const TextSpan(
                text:
                    ', also known as Debian GNU/Linux, is a Linux distribution composed of '
                    'free and open-source software, developed by the community-supported Debian Project,'
                    ' which was established by Ian Murdock on August 16, 1993.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Developer :',
                style: darktext3,
              ),
              TextSpan(
                text: '\t\tThe Debian Project',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'OS family :',
                style: darktext3,
              ),
              TextSpan(
                text: '\t\tLinux',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Source model :',
                style: darktext3,
              ),
              TextSpan(
                text: '\t\tOpen-source',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Update method :',
                style: darktext3,
              ),
              TextSpan(
                text:
                    '\t\tLong-term support in stable edition, rolling release '
                    'in unstable and testing editions',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Package Manager :',
                style: darktext3,
              ),
              TextSpan(
                text: '\t\tdpkg',
                style: normaltext1,
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
