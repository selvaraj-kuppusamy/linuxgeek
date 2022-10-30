import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';

class Popos extends StatefulWidget {
  const Popos({Key? key}) : super(key: key);

  @override
  State<Popos> createState() => _PoposState();
}

class _PoposState extends State<Popos> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;

    Future<void> popos(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri poposwebsite = Uri(scheme: 'https', host: 'pop.system76.com');
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Pop!_OS'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/distros/pop!_os/poposlogo.png',
                    height: 200.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/distros/pop!_os/poposlogo.png',
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
                  text: 'Pop!_OS',
                  style: bluetext1,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            popos(poposwebsite);
                          }),
                        }),
              const TextSpan(
                text:
                    '\t is a free and open-source Linux distribution, based upon Ubuntu, '
                    'and featuring a customized GNOME desktop environment known as COSMIC. '
                    'The distribution is developed by American Linux computer manufacturer System76.',
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
                text: '\t\tSystem76',
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
                text: '\t\tAPT (+ Pop!_Shop User Interface)',
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
                text:
                    '\t\tAPT (command-line frontend), dpkg (backend), Pop!_Shop (GUI), Flatpak',
                style: normaltext1,
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
