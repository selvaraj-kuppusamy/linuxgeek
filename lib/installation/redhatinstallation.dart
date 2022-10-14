import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/textstyle.dart';

class Redhatinstallation extends StatefulWidget {
  const Redhatinstallation({Key? key}) : super(key: key);

  @override
  State<Redhatinstallation> createState() => _RedhatinstallationState();
}

class _RedhatinstallationState extends State<Redhatinstallation> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    //var height = size.height;
    var width = size.width;

    Future<void> redhat(Uri url) async {
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

    Future<void> redhatlogin(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    Future<void> downloadredhat(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri redhatwebsite = Uri(scheme: 'https', host: 'www.redhat.com');
    final Uri login = Uri.parse('https://www.redhat.com/wapps/sso/login.html');
    final Uri download =
        Uri.parse('https://developers.redhat.com/products/rhel/download');
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
        title: const Text('RedHat Installation'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          const Text(
            'Red Hat Installation in VirtualBox',
            style: darktext1,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/redhat.png',
                  height: 150.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/redhat.png',
                  height: 260.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Red Hat Enterprise Linux',
            style: darktext2,
          ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Red Hat Enterprise Linux',
                style: bluetext1,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => {
                        setState(() {
                          redhat(redhatwebsite);
                        }),
                      }),
            const TextSpan(
              text:
                  '\tis a commercial open source Linux distribution developed by Red Hat'
                  ' for the commercial market.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 10.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'System requirements',
            style: darktext2,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            '\u27A4\t 20GB free disk space.',
            style: normaltext1,
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
              style: normaltext1,
            ),
            TextSpan(
                text: 'Virtual Box',
                style: bluetext1,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => {
                        setState(() {
                          virtualbox(virtualboxwebsite);
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
            '\u27A4\t RHEL ISO File.',
            style: normaltext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            '\u27A4\t A minimum of 4 GB RAM is recommended.',
            style: normaltext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            '\u27A4\t One core or thread for each virtualized CPU and one for the host.',
            style: normaltext1,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Step 1 :- Download Red Hat Enterprise Linux 9 ISO',
            style: darktext2,
          ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              text: TextSpan(children: [
            const TextSpan(
              text: 'Proceed to\t',
              style: normaltext1,
            ),
            TextSpan(
                text: 'Red Hat Login Page',
                style: bluetext1,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => {
                        setState(() {
                          redhatlogin(login);
                        }),
                      }),
            const TextSpan(
              text:
                  '\tand enter the username or email and password to logged in. '
                  'If you don’t have account create new one and next proceed the process.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/1.png',
                  height: 170.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/1.png',
                  height: 300.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              text: TextSpan(children: [
            const TextSpan(
              text: 'Thereafter, download the\t',
              style: normaltext1,
            ),
            TextSpan(
                text: 'Red Hat Enterprise Linux',
                style: bluetext1,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => {
                        setState(() {
                          downloadredhat(download);
                        }),
                      }),
            const TextSpan(
              text: '\tfor free.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Choose Redhat Enterprises Linux version and download it.',
            style: normaltext1,
          ),
          const Text(
            'In my case, I choose Red Hat Enterprise Linux 9.',
            style: normaltext1,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Step 2:- Create a Virtual Machine',
            style: darktext2,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Launch VirtualBox and create a new virtual machine.',
            style: normaltext1,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'New',
              style: darktext3,
            ),
            TextSpan(
              text: '\ticon.',
              style: normaltext1,
            ),
          ])),

          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/2.png',
                  height: 100.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/2.png',
                  height: 100.0,
                  width: width,
                ),
          const Text(
            'Name the Operating System name.choose Machine Folder, Type and Version.',
            style: normaltext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Next',
              style: darktext3,
            ),
            TextSpan(
              text: '.',
              style: normaltext1,
            ),
          ])),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/3.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/3.png',
                  height: 500.0,
                  width: width,
                ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text:
                  'In the next step, allocate some memory for your virtual machine. '
                  'In this case, I have chosen to assign a memory capacity of\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '3099 MB',
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
              text: const TextSpan(children: [
            TextSpan(
              text: 'Allocate the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'memory size\t',
              style: darktext3,
            ),
            TextSpan(
              text:
                  '\tfor operating system.If you find this is too slow, you can change'
                  ' it at any time while the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'virtual machine\t',
              style: darktext3,
            ),
            TextSpan(
              text: 'is shutdown.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Next',
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
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/4.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/4.png',
                  height: 500.0,
                  width: width,
                ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'In the next window, select\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Create a virtual hard disk now',
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
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Next',
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
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/5.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/5.png',
                  height: 500.0,
                  width: width,
                ),

          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'Select the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'VDI(VirtualBox Disk Image)',
              style: darktext3,
            ),
            TextSpan(
              text: 'as your hard drive file type.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Next',
              style: darktext3,
            ),
            TextSpan(
              text: '.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 15.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/6.png',
                  height: 350.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/6.png',
                  height: 500.0,
                  width: width,
                ),
          const SizedBox(
            height: 15.0,
          ),

          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'Choose\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Dynamically allocated',
              style: darktext3,
            ),
            TextSpan(
              text: ', so it can use space on your hard disk as it fills up.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Next',
              style: darktext3,
            ),
            TextSpan(
              text: '.',
              style: normaltext1,
            ),
          ])),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/7.png',
                  height: 400.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/7.png',
                  height: 500.0,
                  width: width,
                ),
          const Text(
            'Select File Location and Size.',
            style: normaltext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text:
                  'Choose your Suitable file location and the size of the virtual hard disk. I have chosen to assign\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '50 GB',
              style: darktext3,
            ),
            TextSpan(
              text: '\tto my\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'virtual machine',
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
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Next',
              style: darktext3,
            ),
            TextSpan(
              text: '.',
              style: normaltext1,
            ),
          ])),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/8.png',
                  height: 400.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/8.png',
                  height: 500.0,
                  width: width,
                ),
          const Text(
            'Now, new virtual machine has been successfully created.',
            style: normaltext1,
          ),

          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/9.png',
                  height: 100.0,
                  width: 270.0,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/9.png',
                  height: 100.0,
                  width: width,
                ),
          const Text(
            'Step 3:- Setting Up the Virtual Machine for RHEL',
            style: darktext2,
          ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Settings',
              style: darktext3,
            ),
            TextSpan(
              text: '.',
              style: normaltext1,
            ),
          ])),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/10.PNG',
                  height: 100.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/10.PNG',
                  height: 100.0,
                  width: width,
                ),
          const Text(
            'In the general option, choose Advanced tab.',
            style: normaltext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text:
                  'Here you can choose shared clipboard settings. Select each dropdown menu and choose the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Bidirectional',
              style: darktext3,
            ),
            TextSpan(
              text:
                  '\toption to enable the machine’s clipboard sharing and drag-drop features.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'It is used to copy and paste some content between the virtual machine and the host.',
            style: normaltext1,
          ),

          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/11.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/11.png',
                  height: 520.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/12.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/12.png',
                  height: 520.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/13.png',
                  height: 200.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/13.png',
                  height: 383.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/14.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/14.png',
                  height: 510.0,
                  width: width,
                ),

          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/15.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/15.png',
                  height: 600.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/16.png',
                  height: 350.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/16.png',
                  height: 600.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/17.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/17.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/18.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/18.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/19.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/19.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/20.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/20.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/21.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/21.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/22.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/22.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/23.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/23.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/24.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/24.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/25.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/25.png',
                  height: 513.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/26.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/26.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/27.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/27.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/28.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/28.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/29.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/29.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/30.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/30.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/31.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/31.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/32.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/32.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/33.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/33.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/34.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/34.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/35.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/35.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/36.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/36.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/37.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/37.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/38.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/38.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/39.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/39.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/40.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/40.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/41.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/41.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/42.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/42.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/43.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/43.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/44.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/44.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/45.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/45.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/46.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/46.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/47.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/47.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/48.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/48.png',
                  height: 421.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/49.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/49.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/50.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/50.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/51.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/51.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/52.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/52.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/53.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/53.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/54.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/54.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/55.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/55.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/56.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/56.png',
                  height: 540.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/57.png',
                  height: 30.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/57.png',
                  height: 50.0,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/58.png',
                  height: 30.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/58.png',
                  height: 51.8,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/59.png',
                  height: 30.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/59.png',
                  height: 30.4,
                  width: width,
                ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/60.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/60.png',
                  height: 540.0,
                  width: width,
                ),
        ],
      ),
    ));
  }
}
