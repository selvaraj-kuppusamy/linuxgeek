import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:linuxgeek/utils/textstyle.dart';
import 'package:url_launcher/url_launcher.dart';

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

Future<void> linux(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

final Uri linuxwebsite = Uri(scheme: 'https', host: 'www.linux.org');

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    //var height = size.height;
    var width = size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Overview'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Evolution of Linux',
            style: darktext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Linux',
                style: bluetext1,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => {
                        setState(() {
                          linux(linuxwebsite);
                        }),
                      }),
            const TextSpan(
              text:
                  ', computer operating system created in the early 1990s by Finnish software engineer\t',
              style: normaltext1,
            ),
            const TextSpan(
              text: 'Linus Torvalds',
              style: darktext3,
            ),
            const TextSpan(
              text: '\tand the\t',
              style: normaltext1,
            ),
            const TextSpan(
              text: 'Free Software Foundation',
              style: darktext3,
            ),
            const TextSpan(
              text: '\t(FSF).',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/overview/linustorvalds.png',
                  height: 200.0,
                  width: width,
                )
              : Image.asset(
                  'assets/overview/linustorvalds.png',
                  height: 350.0,
                  width: width,
                ),
          const Center(
              child: Text(
            'Linux Torvalds',
            style: commandtext1,
          )),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'While still a student at the University of Helsinki, '
                  'Torvalds started developing Linux to create a system similar to MINIX, a\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'UNIX',
              style: darktext3,
            ),
            TextSpan(
              text:
                  '\toperating system. In 1991 he released version 0.02; Version 1.0 of the Linux kernel, '
                  'the core of the operating system, was released in 1994.'
                  ' About the same time, American software developer\t',
              style: normaltext1,
            ),
            TextSpan(text: 'Richard Stallman', style: darktext3),
            TextSpan(
                text: '\tand the FSF made efforts to create an\t',
                style: normaltext1),
            TextSpan(text: ' open-source', style: darktext3),
            TextSpan(
                text:
                    '\tUNIX-like operating system called GNU. In contrast to Torvalds,'
                    ' Stallman and the FSF started by creating utilities for the operating system first. '
                    'These utilities were then added to the Linux kernel to '
                    'create a complete system called GNU/Linux, or, less precisely, just Linux.',
                style: normaltext1),
          ])),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Linux Architecture',
            style: darktext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text('The architecture of Linux can be divided into four levels'
              ' of functionality as shown in below figure:'),
          const SizedBox(height: 10.0,),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/overview/linuxarchitecture.png',
                  height: 200.0,
                  width: width,
                )
              : Image.asset(
                  'assets/overview/linuxarchitecture.png',
                  height: 350.0,
                  width: width,
                ),
          const SizedBox(height: 10.0,),

        ],
      ),
    ));
  }
}
