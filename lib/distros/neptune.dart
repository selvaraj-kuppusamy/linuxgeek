import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';

class Neptune extends StatefulWidget {
  const Neptune({Key? key}) : super(key: key);

  @override
  State<Neptune> createState() => _NeptuneState();
}

class _NeptuneState extends State<Neptune> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;

    Future<void> neptune(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }
    final Uri neptunewebsite = Uri(scheme: 'https', host: 'www.neptuneos.com');
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Neptune'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/distros/neptune/neptunelogo.png',
              height: 200.0,
              width:width,
            )
                : Image.asset(
              'assets/distros/neptune/neptunelogo.png',
              height: 200.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Neptune',
                      style: bluetext1,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                          setState(() {
                            neptune(neptunewebsite);
                          }),
                        }),
                  const TextSpan(
                    text: '\tis a GNU/Linux distribution for desktops. It is based on Debian\'s Stable branch,'
                        ' except for a newer kernel, some drivers and newer versions of popular applications, '
                        'such as LibreOffice. It also ships with the latest version of the KDE desktop.',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(height: 10.0,),
            RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Developer :',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\t\tLevente Polyak',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(height: 10.0,),
            RichText(
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
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Update method :',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\t\tapt',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(height: 10.0,),
            RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Package Manager :',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\t\tapt',
                    style: normaltext1,
                  ),
                ])),

          ],
        ),
      ),
    );
  }
}
