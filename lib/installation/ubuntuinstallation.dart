import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';

class Ubuntuinstallation extends StatefulWidget {
  const Ubuntuinstallation({Key? key}) : super(key: key);

  @override
  State<Ubuntuinstallation> createState() => _UbuntuinstallationState();
}

class _UbuntuinstallationState extends State<Ubuntuinstallation> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    //var height = size.height;
    var width = size.width;

    Future<void> ubuntu(Uri url) async {
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

    Future<void> snaps(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri ubuntuwebsite = Uri(scheme: 'https', host: 'www.centos.org');
    final Uri balenaetcherboxwebsite =
        Uri(scheme: 'https', host: 'www.balena.io');
    final Uri snapswebsite = Uri(scheme: 'https', host: 'www.snapcraft.io');
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Ubuntu Installation'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: [
            const Text(
              'Ubuntu Server Installation in Hardware',
              style: darktext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/ubuntuserver.png',
                    height: 150.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/ubuntuserver.png',
                    height: 250.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Ubuntu Linux',
              style: darktext2,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
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
                    text:
                        '\tis a Linux distribution based on Debian and composed mostly of free and open-source software.'
                        ' Ubuntu is officially released in three editions: Desktop, Server, '
                        'and Core for Internet of things devices and robots. '
                        'All the editions can run on the computer alone, or in a virtual machine.',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'System requirements',
              style: darktext2,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              '\u27A4\t 20GB free disk space.',
              style: normaltext1,
              textAlign: TextAlign.justify,
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
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t A minimum of 4 GB RAM is recommended.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t One core or thread for each virtualized CPU and one for the host.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Step 1 :- Download Ubuntu Server ISO',
              style: darktext2,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'Proceed to\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                      text: 'Ubuntu official site',
                      style: bluetext1,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                              setState(() {
                                ubuntu(ubuntuwebsite);
                              }),
                            }),
                  const TextSpan(
                    text: '.\tthen go to downloads. Thereafter, '
                        'download the Ubuntu Server ISO file. Choose lastest Ubuntu Server.',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/0.PNG',
                    height: 200.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/0.PNG',
                    height: 350.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'In my case, I choose Ubuntu 22.04 LTS.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Step 2:- Create Bootable USB Drive on Ubuntu Server',
              style: darktext2,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5.0),
            const Text(
              'The balenaEtcher utility launches. Plug in the USB drive –'
              ' you should see the drive pop up in the device field.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const Text(
              '\u27A4\t In the Flash from file, click Disk or ISO Image.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Browse and select the .iso Ubuntu Server file you downloaded earlier.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Select Target USB as the device you wish to write to.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Click the Flash button to the Flash.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/1.PNG',
                    height: 210.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/1.PNG',
                    height: 400.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Step 3:- Installing Ubuntu Server in Hardware',
              style: darktext2,
              textAlign: TextAlign.justify,
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
              'Now, The Ubuntu Server installation process will be started.'
              ' Use the up and down key to go to Install Ubuntu Server.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
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
                    'assets/installation/ubuntuinstallation/1.1.PNG',
                    height: 200.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/1.1.PNG',
                    height: 345.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Ubuntu Server is booting...',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/1.2.PNG',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/1.2.PNG',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Now, you should select your preferred language. I’m using English.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tEnter',
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
                    'assets/installation/ubuntuinstallation/2.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/2.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Now, Select a keyboard layout .As I’m using a English keyboard, '
              'Ubuntu to detect my layout.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tEnter',
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
                    'assets/installation/ubuntuinstallation/3.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/3.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Now, Configure the Network Interface in Ubuntu Server. '
              'In my case, Choose default Network Interface option.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tEnter',
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
                    'assets/installation/ubuntuinstallation/4.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/4.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'In case, if you are using a proxy, you may enter them here and Press done.'
              ' If you don’t have a proxy that’s fine. You can leave it blank.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'In my case don’t have a proxy. So I can leave it blank.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tEnter',
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
                    'assets/installation/ubuntuinstallation/5.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/5.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Configure the Ubuntu Archive mirror.You can configure the Ubuntu mirror of your choice. '
              'In my case, just leaving the default.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tEnter',
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
                    'assets/installation/ubuntuinstallation/6.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/6.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'In the storage selection, Use an entire disk option and'
              ' Custom storage layout option there.you can choose any one of the option.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/7.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/7.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'In my case, I choose Custom storage layout option.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tEnter',
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
                    'assets/installation/ubuntuinstallation/8.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/8.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Now, Configure the disk.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/9.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/9.png',
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
                    text: 'Now, Press the Free space and press enter to Click',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tAdd GPT Partition',
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
                    'assets/installation/ubuntuinstallation/10.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/10.png',
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
                        'First create Boot partition. Add Boot partition disk size,'
                        ' choose file format and Finally, choose\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '/boot',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tas a mount.',
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
                    text: 'In my case, I was add Boot partition disk size\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '1GB',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tand I was choose\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: 'ext4',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\ta file format .Finally, I choose\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '/boot',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tas a mount.',
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
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tCreate',
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
                    'assets/installation/ubuntuinstallation/11.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/11.png',
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
                        'Second create Root partition. Add Root partition disk size,'
                        ' choose file format and Finally, choose\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '/root',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tas a mount.',
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
                    text: 'In my case, I was add Root partition disk size\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '6GB',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tand I was choose\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: 'ext4',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\ta file format. Finally, I choose\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '/root',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tas a mount.',
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
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tCreate',
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
                    'assets/installation/ubuntuinstallation/12.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/12.png',
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
                        'Third create Swap partition. Add Swap partition disk size and Finally, choose',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: 'swap',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tformat.',
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
                    text: 'In my case, I was add Swap partition disk size\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '2GB',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tand I was choose\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: 'swap',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\ta file format.',
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
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tCreate',
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
                    'assets/installation/ubuntuinstallation/13.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/13.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Finally, Overview Storage configuration.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
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
                    'assets/installation/ubuntuinstallation/14.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/14.png',
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
                    text: 'You will be prompted\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tConfirm destructive action',
                    style: darktext3,
                  ),
                  TextSpan(
                    text:
                        '. That says your storage will be formatted.If you want to proceed to press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tContinue\t',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: 'option. Otherwise, press\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tNo\t',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: 'option.',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/15.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/15.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Now, you can set up your user account here along with the server profile.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),

            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Enter your name.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Enter your servers name.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Pick your username.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              '\u27A4\t Pick your password and confirm password.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
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
                    'assets/installation/ubuntuinstallation/16.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/16.png',
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
                        'In this case, You will be asked whether you want to install\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: 'OpenSSH Server',
                    style: darktext3,
                  ),
                  TextSpan(
                    text:
                        '\tor not. In most scenarios, you would remote into the Server using an SSH protocol, '
                        'hence it is recommended to leave the ssh setting enabled.',
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
                    text: 'If you want\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: 'OpenSSH Server\t',
                    style: darktext3,
                  ),
                  TextSpan(
                    text:
                        ', Choose that and You also have the opportunity to import your '
                        'SSH keys from GitHub or Launchpad. Otherwise choose no option.',
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
                    text: 'In my case. I was choose\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: 'OpenSSH Server',
                    style: darktext3,
                  ),
                  TextSpan(
                    text: '\tand install it.',
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
                    text: 'Press',
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
                    'assets/installation/ubuntuinstallation/17.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/17.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
                  const TextSpan(
                    text:
                        'Now, you can select from a list of popular snaps to install on your system.\t',
                    style: normaltext1,
                  ),
                  TextSpan(
                      text: 'snaps',
                      style: bluetext1,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                              setState(() {
                                snaps(snapswebsite);
                              }),
                            }),
                  const TextSpan(
                    text: '\tare self-contained software packages that work '
                        'across a range of Linux distributions. '
                        'In my case, I didn’t select any Server Snaps.',
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
                    text: 'Press',
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
                    'assets/installation/ubuntuinstallation/18.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/18.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'The Ubuntu Server installation process will begin and after sometime you will'
              ' get an option that says the installation is now complete and the Server is rebooting.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/19.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/19.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Now, Ubuntu Server installation was complete.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tReboot Now.',
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
                    'assets/installation/ubuntuinstallation/20.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/20.png',
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
                    text: 'During the reboot, you will be asked to remove '
                        'the installation medium and then press',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tENTER',
                    style: darktext3,
                  ),
                  TextSpan(
                    text:
                        ', which is already done automatically, so you may hit Enter to proceed.',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(
              height: 10.0,
            ),

            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/21.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/21.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'After the Virtual Machine is rebooted, you will get a '
              'login screen to your virtual machine, enter the username that '
              'you set up during the installation, and the password. '
              'And you should be able to log in to the Ubuntu Server.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/22.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/22.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Now, you should enter the Ubuntu Server username and Ubuntu Server password.'
              ' And the proceed to logged in.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/23.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/23.png',
                    height: 500.0,
                    width: width,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Check, Ubuntu Server version.',
              style: normaltext1,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 5.0,
            ),
            RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Use this command',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tcat /etc/os-release',
                    style: commandtext1,
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
                    'assets/installation/ubuntuinstallation/24.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/24.png',
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
                    text: 'Check, Ubuntu Server details using',
                    style: normaltext1,
                  ),
                  TextSpan(
                    text: '\tscreenfetch\t',
                    style: commandtext1,
                  ),
                  TextSpan(
                    text: 'command(Optional).',
                    style: normaltext1,
                  ),
                ])),
            const SizedBox(
              height: 10.0,
            ),
            orientation == Orientation.portrait
                ? Image.asset(
                    'assets/installation/ubuntuinstallation/25.png',
                    height: 250.0,
                    width: width,
                  )
                : Image.asset(
                    'assets/installation/ubuntuinstallation/25.png',
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
                  text: 'Ubuntu Server',
                  style: darktext3,
                ),
                TextSpan(
                  text: '\thas successfully installed.',
                  style: normaltext1,
                ),
              ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
