import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/textstyle.dart';

class Bunsenlabs extends StatefulWidget {
  const Bunsenlabs({Key? key}) : super(key: key);

  @override
  State<Bunsenlabs> createState() => _BunsenlabsState();
}

class _BunsenlabsState extends State<Bunsenlabs> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;

    Future<void> bunsenlabs(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }
    final Uri bunsenlabswebsite = Uri(scheme: 'https', host: 'www.bunsenlabs.org');
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Bunsenlabs'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/distros/bunsenlabs/bunsenlabslogo.png',
              height: 200.0,
              width:width,
            )
                : Image.asset(
              'assets/distros/bunsenlabs/bunsenlabslogo.png',
              height: 200.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'BunsenLabs',
                      style: bluetext1,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                          setState(() {
                            bunsenlabs(bunsenlabswebsite);
                          }),
                        }),
                  const TextSpan(
                    text: '\tis a Linux distribution offering a light-weight and '
                        'easily customizable Openbox desktop. '
                        'The BunsenLabs distribution is based on Debian\'s Stable branch'
                        ' and is a community continuation of the CrunchBang Linux distribution.',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(height: 10.0,),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Developer :',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\t\tCrunchBang Linux Community',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(height: 10.0,),
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
            const SizedBox(height: 10.0,),
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
            const SizedBox(height: 10.0,),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Update method :',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\t\tAPT',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(height: 10.0,),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Package Manager :',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\t\tdpkg, with several front-ends',
                    style: normaltext1,
                  ),
                ])),

          ],
        ),
      ),
    );  }
}
