import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';

class LinuxMint extends StatefulWidget {
  const LinuxMint({Key? key}) : super(key: key);

  @override
  State<LinuxMint> createState() => _LinuxMintState();
}

class _LinuxMintState extends State<LinuxMint> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;

    Future<void> linuxmint(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }
    final Uri linuxmintwebsite = Uri(scheme: 'https', host: 'www.linuxmint.com');
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Arch'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/distros/linuxmint/linuxmint.png',
              height: 200.0,
              width:width,
            )
                : Image.asset(
              'assets/distros/linuxmint/linuxmint.png',
              height: 200.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Linux Mint',
                      style: bluetext1,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                          setState(() {
                            linuxmint(linuxmintwebsite);
                          }),
                        }),
                  const TextSpan(
                    text: '\tis a community-driven Linux distribution based on Ubuntu, '
                        'bundled with a variety of free and open-source applications.'
                        ' It can provide full out-of-the-box multimedia support for '
                        'hose who choose to include proprietary software such as multimedia codecs.',
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
                    text: '\t\t	Clement Lefebvre, Vincent Vermeulen, Oscar799, and community',
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
                    text: '\t\t	APT (+ Software Manager, Update Manager & Synaptic user interfaces)',
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
                    text: '\t\tdpkg and Flatpak',
                    style: normaltext1,
                  ),
                ])),

          ],
        ),
      ),
    );
  }
}
