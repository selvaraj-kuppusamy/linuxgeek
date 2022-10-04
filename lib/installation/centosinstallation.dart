import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    Future<void> centos(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    Future<void> virtualbox(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri centoswebsite = Uri(scheme: 'https', host: 'www.centos.org');
    final Uri virtualboxwebsite =
        Uri(scheme: 'https', host: 'www.virtualbox.org');

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
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centos.png',
                    height: 150.0,
                    width: 270.0,
                  )
                : Image.asset(
                    'assets/installation/centos.png',
                    height: 150.0,
                    width: width,
                  ),
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
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'CentOS',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            centos(centoswebsite);
                          }),
                        }),
              const TextSpan(
                text:
                    '\t is a Linux distribution that provides a free and open-source '
                    'community-supported computing platform,'
                    ' functionally compatible with its upstream source, Red Hat Enterprise Linux.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
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
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                  text: 'Virtual Box',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            virtualbox(virtualboxwebsite);
                          }),
                        }),
              const TextSpan(
                text: '\ton the System.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),

            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t CentOS ISO File.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t A minimum of 4 GB RAM is recommended.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t One core or thread for each virtualized CPU and one for the host.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
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
            // const Text(
            //   'Proceed to CentOS official site. then go to downloads.'
            //   ' Thereafter, download the CentOS Linux ISO file for free. '
            //   'There are several CentOS Linux versions are there. '
            //   'In my case, I was choose to CentOS Linux 9 ISO file.Approximate, '
            //   'CentOS ISO file size is 9GB to download.',
            //   style: TextStyle(
            //       fontSize: 15,
            //       fontWeight: FontWeight.w400,
            //       color: Colors.black),
            // ),
            RichText(
                text: TextSpan(children: [
              const TextSpan(
                text: 'Proceed to\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                  text: 'CentOS official site',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            centos(centoswebsite);
                          }),
                        }),
              const TextSpan(
                text: '.\tthen go to downloads. Thereafter, '
                    'download the CentOS Linux ISO file for free. There are several'
                    ' CentOS Linux versions are there. Choose CentOS Linux versions based on '
                    'your system configuration.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            const Text('Approximate, CentOS ISO file size is 9GB to download.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                )),

            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/0.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/0.png',
                    height: 500,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Step 3:- Installing CentOS in Hardware',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Connect the',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\tUSB flash\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'drive to a PC. Turn on the PC and press the key'
                    ' that opens the boot-device selection menu for the computer such as the,',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\tEsc/F9/F10/F12\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text:
                    ' keys. Select the option that boots the PC from the USB flash drive.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
                'Now, The CentOS Linux installation process will be started.'
                ' Use the up and down key to go to Install CentOS Linux.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Press.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\tEnter\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'key.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),

            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/2.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/2.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
                ' Install CentOS Linux is booted and testing the process.'
                ' After, the window below will prompt you to select the installation language.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/3.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/3.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),

            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/4.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/4.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text:
                    'Now, you should select your preferred language. I’m using',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\tEnglish',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Continue',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),

            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/5.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/5.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Now, should setup the\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Installation summary',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),

            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/6.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/6.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Localization',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Keyboard',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Now, should add your preferable\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'keyboard layout',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click \t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '[ + ]',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '\tsymbol to add\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'keyboard layout',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '\tand\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '[ - ]',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '\t symbol to remove\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'keyboard layout',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),

            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/7.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/7.png',
                    height: 500.0,
                    width: width,
                  ),

            const SizedBox(
              height: 10.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'In my case, I choose\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'English (India, with rupee)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Add',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/8.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/8.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),

            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'I selected my',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\tkeyboard layout\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'and also overview the',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\tkeyboard layout',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Done',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/9.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/9.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Language Support',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Now, should select your preferable\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'language support',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.\tIn my case, I was select additionally\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'English(India)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Done',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),

            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/10.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/10.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Time and Date',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Choose the location as per your setup. In my case Region: Asia and City:Kolkata.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Done',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/11.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/11.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Software',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Installation Source',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text:
                    'To specify a file or a location to install CentOS Linux from, Select\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Installation Source',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '\tfrom the\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Installation Summary',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text:
                    '\tscreen. On this screen, you can choose between locally available '
                    'installation media, such as a DVD or an ISO file, or a network location.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'In my case, I choose default\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Auto-detected installation media',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '\toption.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\tDone',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),

            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/12.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/12.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Software Selection',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'The common installation types are:',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: '\u27A4\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Minimal Install :',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text:
                    '\tMinimal server without GUI, for advanced Linux sysadmins.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: '\u27A4\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Workstation :',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '\tFor installation on laptops and PCs.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: '\u27A4\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Server with GUI :',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text:
                    '\t Server installation with graphical interface for administration.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'In my case, I choose\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Workstation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '\tand also select\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Additional software for Selected Environment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Done',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/13.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/13.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'System',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Installation Destination',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'In the\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Installation Destination',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: ',\tto select\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Automatic',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text:
                    '\toption to create automatically partition the hard drive. Otherwise, Select\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Custom',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: '\toption to manually create the partitions.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text:
                      'To ensure the partition option and selected the hard disk.'
                      ' In my case, I was select\t',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Automatic',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '\toption to automatically create the partitions.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/14.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/14.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'KDUMP',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'kdump is\t',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'a feature of the Linux kernel that creates crash '
                      'dumps in the event of a kernel crash',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text:
                      '.\t When triggered, kdump exports a memory image that can be '
                      'analyzed for the purposes of debugging and determining the cause of a crash.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'If you will unchecked the\t',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Enable kdump',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ', you can save memory.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/15.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/15.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'In my case, I was\t',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'unchecked kdump',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/16.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/16.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Network and Hostname',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'In the\t',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Network and Hostname',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text:
                      '\tsection, turn on the toggle in the network interface.'
                      ' Setting host name is optional.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/17.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/17.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'In my case, I choose default network.'
                      'If you can change network connection,you can configure it.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/18.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/18.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/19.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/19.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/20.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/20.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/21.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/21.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/22.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/22.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/23.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/23.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/24.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/24.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/25.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/25.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/26.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/26.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/27.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/27.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/28.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/28.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/29.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/29.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/30.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/30.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/centosinstallation/31.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/centosinstallation/31.png',
                    height: 500.0,
                    width: width,
                  ),
          ],
        ),
      ),
    );
  }
}
