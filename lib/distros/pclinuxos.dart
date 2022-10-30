import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';

class Pclinuxos extends StatefulWidget {
  const Pclinuxos({Key? key}) : super(key: key);

  @override
  State<Pclinuxos> createState() => _PclinuxosState();
}

class _PclinuxosState extends State<Pclinuxos> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;

    Future<void> pclinuxos(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }
    final Uri pclinuxoswebsite = Uri(scheme: 'https', host: 'www.pclinuxos.com');
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Pclinuxos'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/distros/pclinuxos/pclinuxoslogo.png',
              height: 200.0,
              width:width,
            )
                : Image.asset(
              'assets/distros/pclinuxos/pclinuxoslogo.png',
              height: 200.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'PCLinuxOS',
                      style: bluetext1,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                          setState(() {
                            pclinuxos(pclinuxoswebsite);
                          }),
                        }),
                  const TextSpan(
                    text: ', often shortened to PCLOS, is an x86-64 Linux distribution,'
                        ' with KDE Plasma Desktop, MATE and XFCE as its default user interfaces. '
                        'It is primarily free software operating system for personal computers aimed at ease of use. '
                        'It is considered a rolling release.',
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
                    text: '\t\tBill Reynolds aka "Texstar"',
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
                    text: '\t\tRolling release',
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
                    text: '\t\tAPT-RPM',
                    style: normaltext1,
                  ),
                ])),

          ],
        ),
      ),
    );
  }
}
