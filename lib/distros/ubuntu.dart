import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';
class Ubuntu extends StatefulWidget {
  const Ubuntu({Key? key}) : super(key: key);

  @override
  State<Ubuntu> createState() => _UbuntuState();
}

class _UbuntuState extends State<Ubuntu> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
   // var height = size.height;
    var width = size.width;

    Future<void> ubuntu(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }
    final Uri ubuntuwebsite = Uri(scheme: 'https', host: 'www.ubuntu.com');

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Ubuntu'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/distros/ubuntu/ubuntulogo.png',
              height: 200.0,
              width:width,
            )
                : Image.asset(
              'assets/distros/ubuntu/ubuntulogo.png',
              height: 200.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            RichText(
                textAlign: TextAlign.justify,
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
                    text: '\tis a Linux distribution based on Debian and composed mostly of free and open-source software.'
                        ' Ubuntu is officially released in three editions: Desktop,'
                        ' Server, and Core for Internet of things devices and robots.'
                        ' All the editions can run on the computer alone, or in a virtual machine.',
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
                    text: '\t\tCanonical Ltd',
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
                    text: '\t\tSoftware Updater, Ubuntu Software, apt',
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
                    text: '\t\tGNOME Software, dpkg (APT), Snap, Flatpak – graphical front-end: Snap Store',
                    style: normaltext1,
                  ),
                ])),

          ],
        ),
      ),
    );
  }
}
