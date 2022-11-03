import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';

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
    Future<void> balenaetcher(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri centoswebsite = Uri(scheme: 'https', host: 'www.centos.org');
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
          title: const Text('CentOS Installation'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Text(
              'CentOS Installation in Hardware',
              style: darktext1, textAlign: TextAlign.justify,
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
              style: darktext2,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
              TextSpan(
                  text: 'CentOS',
                  style: bluetext1,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          setState(() {
                            centos(centoswebsite);
                          }),
                        }),
              const TextSpan(
                text:
                    '\tis a Linux distribution that provides a free and open-source '
                    'community-supported computing platform,'
                    ' functionally compatible with its upstream source, Red Hat Enterprise Linux.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'System requirements',
              style: darktext2, textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              '\u27A4\t 20GB free disk space.',
              style: normaltext1,textAlign: TextAlign.justify,),
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
                textAlign: TextAlign.justify,
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
              style: normaltext1, textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t A minimum of 4 GB RAM is recommended.',
              style: normaltext1, textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t One core or thread for each virtualized CPU and one for the host.',
              style: normaltext1, textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Step 1 :- Download CentOS Linux ISO',
              style: darktext2, textAlign: TextAlign.justify,),
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
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
              const TextSpan(
                text: 'Proceed to\t',
                style: normaltext1,
              ),
              TextSpan(
                  text: 'CentOS official site',
                  style: bluetext1,
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
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            const Text('In my case, I choose CentOS Stream Linux 9.',
                style: normaltext1,textAlign: TextAlign.justify,),

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
            const Text('Step 2:- Create Bootable USB Drive on CentOS Linux',style: darktext2,textAlign: TextAlign.justify,),
            const SizedBox(height: 5.0),
            const Text('The balenaEtcher utility launches. Plug in the USB drive –'
                ' you should see the drive pop up in the device field.',style: normaltext1,textAlign: TextAlign.justify,),
            const Text(
              '\u27A4\t In the Flash from file, click Disk or ISO Image.',
              style: normaltext1,textAlign: TextAlign.justify,),
            const SizedBox(height: 5.0,),
            const Text(
              '\u27A4\t Browse and select the .iso CentOS Linux file you downloaded earlier.',
              style: normaltext1,textAlign: TextAlign.justify,),
            const SizedBox(height: 5.0,),
            const Text(
              '\u27A4\t Select Target USB as the device you wish to write to.',
              style: normaltext1,textAlign: TextAlign.justify,),
            const SizedBox(height: 5.0,),
            const Text(
              '\u27A4\t Click the Flash button to the Flash.',
              style: normaltext1,textAlign: TextAlign.justify,),
            const SizedBox(height: 10.0,),
            orientation == Orientation.portrait
                ? Image.asset(
              'assets/installation/centosinstallation/1.PNG',
              height: 210.0,
              width:width,
            )
                : Image.asset(
              'assets/installation/centosinstallation/1.PNG',
              height: 400.0,
              width: width,
            ),
            const SizedBox(height: 10.0,),
            const Text(
              'Step 3:- Installing CentOS in Hardware',
              style: darktext2, textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Connect the',
                style: normaltext1,
              ),
              TextSpan(
                text: '\tUSB flash\t',
                style: darktext3,
              ),
              TextSpan(
                text: 'drive to a PC. Turn on the PC and press the key'
                    ' that opens the boot-device selection menu for the computer such as the,',
                style: normaltext1,
              ),
              TextSpan(
                text: '\tEsc/F9/F10/F12\t',
                style: darktext3,
              ),
              TextSpan(
                text:
                    ' keys. Select the option that boots the PC from the USB flash drive.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
                'Now, The CentOS Linux installation process will be started.'
                ' Use the up and down key to go to Install CentOS Linux.',
                style: normaltext1,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Press',
                style: normaltext1,
              ),
              TextSpan(
                text: '\tEnter\t',
                style: darktext3,
              ),
              TextSpan(
                text: 'key.',
                style: normaltext1,
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
                style: normaltext1,textAlign: TextAlign.justify,),
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
            const  Text('Centos Linux are Still booting...',style: normaltext1,textAlign: TextAlign.justify,),
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
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text:
                    'Now, you should select your preferred language. I’m using',
                style: normaltext1,
              ),
              TextSpan(
                text: '\tEnglish',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click ',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Continue',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Now, should setup the\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Installation summary',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
              style: darktext2,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Keyboard',
              style: darktext4, textAlign: TextAlign.justify,
            ),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Now, should add your preferable\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'keyboard layout',
                style: darktext3,
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
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click \t',
                style: normaltext1,
              ),
              TextSpan(
                text: '[ + ]',
                style: darktext3,
              ),
              TextSpan(
                text: '\tsymbol to add\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'keyboard layout',
                style: darktext3,
              ),
              TextSpan(
                text: '\tand\t',
                style: normaltext1,
              ),
              TextSpan(
                text: '[ - ]',
                style: darktext3,
              ),
              TextSpan(
                text: '\t symbol to remove\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'keyboard layout',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'In my case, I choose\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'English (India, with rupee)',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Add',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'I selected my',
                style: normaltext1,
              ),
              TextSpan(
                text: '\tkeyboard layout\t',
                style: darktext3,
              ),
              TextSpan(
                text: 'and also overview the',
                style: normaltext1,
              ),
              TextSpan(
                text: '\tkeyboard layout',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Done',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
              style: darktext4,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Now, should select your preferable\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'language support',
                style: darktext3,
              ),
              TextSpan(
                text: '.\tIn my case, I was select additionally\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'English(India)',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Done',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
              style: darktext4,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Choose the location as per your setup. In my case Region: Asia and City:Kolkata.',
              style: normaltext1, textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Done',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
              style: darktext1, textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Installation Source',
              style: darktext4, textAlign: TextAlign.justify,
            ),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text:
                    'To specify a file or a location to install CentOS Linux from, Select\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Installation Source',
                style: darktext3,
              ),
              TextSpan(
                text: '\tfrom the\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Installation Summary',
                style: darktext3,
              ),
              TextSpan(
                text:
                    '\tscreen. On this screen, you can choose between locally available '
                    'installation media, such as a DVD or an ISO file, or a network location.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'In my case, I choose default\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Auto-detected installation media',
                style: darktext3,
              ),
              TextSpan(
                text: '\toption.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click',
                style: normaltext1,
              ),
              TextSpan(
                text: '\tDone',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
              style: darktext4,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'The common installation types are:',
              style: normaltext1,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: '\u27A4\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Minimal Install :',
                style: darktext3,
              ),
              TextSpan(
                text:
                    '\tMinimal server without GUI, for advanced Linux sysadmins.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: '\u27A4\t',
                style: darktext3,
              ),
              TextSpan(
                text: 'Workstation :',
                style: darktext3,
              ),
              TextSpan(
                text: '\tFor installation on laptops and PCs.',
                style: normaltext1,
              ),
            ])),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: '\u27A4\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Server with GUI :',
                style: darktext3,
              ),
              TextSpan(
                text:
                    '\t Server installation with graphical interface for administration.',
                style: normaltext1,
              ),
            ])),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'In my case, I choose\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Workstation',
                style: darktext3,
              ),
              TextSpan(
                text: '\tand also select\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Additional software for Selected Environment',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Click\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Done',
                style: darktext3,
              ),
              TextSpan(
                text: '.',
                style: normaltext1,
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
              style: darktext2,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Installation Destination',
              style: darktext4,textAlign: TextAlign.justify,
            ),

            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
              TextSpan(
                text: 'In the\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Installation Destination',
                style: darktext3,
              ),
              TextSpan(
                text: ',\tto select\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Automatic',
                style: darktext3,
              ),
              TextSpan(
                text:
                    '\toption to create automatically partition the hard drive. Otherwise, Select\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Custom',
                style: darktext3,
              ),
              TextSpan(
                text: '\toption to manually create the partitions.',
                style: normaltext1,
              ),
            ])),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text:
                      'To ensure the partition option and selected the hard disk.'
                      ' In my case, I was select\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Automatic',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\toption to automatically create the partitions.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Done',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
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
              style: darktext4,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'kdump is\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'a feature of the Linux kernel that creates crash '
                      'dumps in the event of a kernel crash',
                  style: darktext3,
                ),
                TextSpan(
                  text:
                      '.\t When triggered, kdump exports a memory image that can be '
                      'analyzed for the purposes of debugging and determining the cause of a crash.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'If you will unchecked the\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Enable kdump',
                  style: darktext3,
                ),
                TextSpan(
                  text: ', you can save memory.',
                  style: normaltext1,
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
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'In my case, I was\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'unchecked kdump',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Done',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
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
              style: darktext4,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'In the\t',
                  style:normaltext1,
                ),
                TextSpan(
                  text: 'Network and Hostname',
                  style: darktext3,
                ),
                TextSpan(
                  text:
                      '\tsection, turn on the toggle in the network interface.'
                      ' Setting host name is optional.',
                  style: normaltext1,
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
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'In my case, I choose default network.'
                      'If you can change network connection,you can configure it.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Done',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
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
            const Text(
              'Security Profile',
              style: darktext4,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Security profile',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tyou can choose the security policy for your system.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'In my case, I was choose\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Security profile',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tby default.',
                  style: normaltext1,
                ),
              ]),
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
            const Text(
              'User Settings',
              style: darktext2,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Root password',
              style: darktext4,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'In the root account, enter the\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Root Password',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tand\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Confirm Password',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Also your preference to choose\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Lock root account',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tand\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Allow root SSH login with password',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Done',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\ttwice.',
                  style: normaltext1,
                ),
              ]),
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
            const Text(
              'User Creation',
              style: darktext4,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'In the User Creation, you can set up your user account.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Enter your name.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Enter your user name.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Pick your username.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Pick your password and confirm password.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Also your preference to choose\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Make this user administrator',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tand\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Require a password to use this account',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Done',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
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
            const Text(
              'Now, this Installation Summary should ready for the Begin Installation.',
              style: normaltext1, textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Once again, Overview all things.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: ' Begin Installation',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
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
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'CentOS Linux',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tinstallation is processing.',
                  style: normaltext1,
                ),
              ]),
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
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'CentOS Linux',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tInstallation is completed.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text:
                      'At this point, it is safe to remove your installation media, or in this case,\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'unmount',
                  style: darktext3,
                ),
                TextSpan(
                  text:
                      '\t the ISO image file. During the reboot process, select the first entry and hit\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'ENTER',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Click\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Reboot System',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
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
            const Text(
              'Now, CentOS Linux login page show here.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Press\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Enter',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
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
            const Text(
              'In the CentOS Linux login screen. Enter your user password.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Press\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'Enter',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
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
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Now,\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'CentOS Linux',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tLogin logged successfully.',
                  style: normaltext1,
                ),
              ]),
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
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Now, you can explore\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'CentOS Linux',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
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

            const Text(
              'Check, CentOS version.',
              style: normaltext1,textAlign: TextAlign.justify,),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Use below command in terminal.',
              style: normaltext1,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'cat /etc/os-release',
              style: commandtext1,textAlign: TextAlign.justify,),
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
            const Text(
              'Update the CentOS Linux',
              style: darktext4,textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Now, you can use below command to\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'update',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tthe\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'CentOS Linux',
                  style: darktext3,
                ),
                TextSpan(
                  text: '.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'yum update',
              style: commandtext1,textAlign: TextAlign.justify,),
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
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Check,\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'CentOS Linux',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tdetails using\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'neofetch',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\tcommand(Optional).',
                  style: normaltext1,
                ),
              ]),
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
            const SizedBox(
              height: 10.0,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Finally,\t',
                  style: normaltext1,
                ),
                TextSpan(
                  text: 'CentOS Linux',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\thas successfully installed.',
                  style: normaltext1,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
