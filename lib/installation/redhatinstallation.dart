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
            style: darktext2,textAlign: TextAlign.justify,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/redhat.png',
                  height: 150.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/redhat.png',
                  height: 200.0,
                  width: width,
                ),
          const Text(
            'Red Hat Enterprise Linux',
            style: darktext2,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
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
          const Text(
            'System requirements',
            style: darktext2,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            '\u27A4\t 20GB free disk space.',textAlign: TextAlign.justify,
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
              textAlign: TextAlign.justify,
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
            '\u27A4\t RHEL ISO File.',textAlign: TextAlign.justify,
            style: normaltext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            '\u27A4\t A minimum of 4 GB RAM is recommended.',
            style: normaltext1,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            '\u27A4\t One core or thread for each virtualized CPU and one for the host.',
            style: normaltext1,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Step 1 :- Download Red Hat Enterprise Linux ISO',
            style: darktext2, textAlign: TextAlign.justify,
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
                  height: 350.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
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
            style: normaltext1,textAlign: TextAlign.justify,
          ),
          const Text(
            'In my case, I choose Red Hat Enterprise Linux 9.',
            style: normaltext1,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Step 2:- Create a Virtual Machine',
            style: darktext2,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Launch VirtualBox and create a new virtual machine.',
            style: normaltext1,textAlign: TextAlign.justify,
          ),
          RichText(
              textAlign: TextAlign.justify,
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
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/2.png',
                  height: 100.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/2.png',
                  height: 90.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Name the Operating System name.choose Machine Folder, Type and Version.',
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
              text: 'Next',
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
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
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
              textAlign: TextAlign.justify,
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
              textAlign: TextAlign.justify,
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
            height: 10.0,
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
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
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
              textAlign: TextAlign.justify,
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
            height: 10.0,
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
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
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
              textAlign: TextAlign.justify,
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
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/6.png',
                  height: 350.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/6.png',
                  height: 450.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),

          RichText(
              textAlign: TextAlign.justify,
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
              textAlign: TextAlign.justify,
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
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/7.png',
                  height: 400.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/7.png',
                  height: 450.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            textAlign: TextAlign.justify,
            'Select File Location and Size.',
            style: normaltext1,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
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
              textAlign: TextAlign.justify,
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
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/8.png',
                  height: 400.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/8.png',
                  height: 480.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Now, new virtual machine has been successfully created.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
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
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Step 3:- Setting Up the Virtual Machine for RHEL',
            style: darktext2, textAlign: TextAlign.justify,
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
              text: 'Settings',
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
                  'assets/installation/redhatinstallation/10.PNG',
                  height: 100.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/10.PNG',
                  height: 100.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'In the general option, choose Advanced tab.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
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
            style: normaltext1,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/11.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/11.png',
                  height: 550.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'After clicking on the storage, we will attach the Red Hat Enterprise Linux 9 '
            'ISO file to our operating system.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'Click on the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Empty',
              style: darktext3,
            ),
            TextSpan(
              text: '\tunder',
              style: normaltext1,
            ),
            TextSpan(
              text: ' Controller: IDE',
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
              text: 'After click on\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Empty',
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
                  'assets/installation/redhatinstallation/12.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/12.png',
                  height: 550.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'Choose your\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Red Hat Enterprise Linux 9 iso image file',
              style: darktext3,
            ),
            TextSpan(
              text: '\tin your local system. And then select\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Red Hat Enterprise Linux 9 iso image file',
              style: darktext3,
            ),
            TextSpan(
              text: ', then',
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
              text: 'Open',
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
                  'assets/installation/redhatinstallation/13.png',
                  height: 200.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/13.png',
                  height: 400.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Now, Red Hat Enterprise Linux 9 image file was selected.',
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
              text: 'Ok',
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
                  'assets/installation/redhatinstallation/14.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/14.png',
                  height: 550.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Step 4:- Installing RHEL in VirtualBox',
            style: darktext2, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Now, let’s boot up our machine and Install Red Hat Enterprise Linux.',
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
              text: 'Start',
              style: darktext3,
            ),
            TextSpan(
              text: ' icon on first screen.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'The Red Hat Enterprise Linux installation process will be started.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/15.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/15.png',
                  height: 570.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Now, use the up and down key to go to Install Red Hat Enterprise Linux.',
            style: normaltext1, textAlign: TextAlign.justify,
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
              text: '\tkey.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/16.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/16.png',
                  height: 570.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Red Hat Enterprise Linux is booted and testing the process.After, '
            'the window below will prompt you to select the installation language.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/17.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/17.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const  Text('Red Hat Enterprise Linux are Still booting...',
          style: normaltext1,textAlign: TextAlign.justify,),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/18.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/18.png',
                  height: 600.0,
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
                  'Now, you should select your preferred language. I’m using\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'English',
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
              text: 'And press\t',
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
                  'assets/installation/redhatinstallation/19.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/19.png',
                  height: 600.0,
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
                  'assets/installation/redhatinstallation/20.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/20.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Localization',
            style: darktext2,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Keyboard',
            style: darktext4,textAlign: TextAlign.justify,
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
            TextSpan(text: '.', style: normaltext1),
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
                  'assets/installation/redhatinstallation/21.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/21.png',
                  height: 600.0,
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
                  'assets/installation/redhatinstallation/22.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/22.png',
                  height: 600.0,
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
                  'assets/installation/redhatinstallation/23.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/23.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Language Support', textAlign: TextAlign.justify,
            style: darktext4,
          ),
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
                  'assets/installation/redhatinstallation/24.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/24.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Time and Date',
            style: darktext4, textAlign: TextAlign.justify,
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
                  'assets/installation/redhatinstallation/25.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/25.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Software',
            style: darktext2, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Connect to Red Hat',
            style: darktext4, textAlign: TextAlign.justify,
          ),

          const SizedBox(
            height: 5.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'To Connect to Red Hat using authenticate with your\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Red Hat login credentials',
              style: darktext3,
            ),
            TextSpan(
              text: '\tlike\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Red Hat Username',
              style: darktext3,
            ),
            TextSpan(
              text: '\tand\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Red Hat Password',
              style: darktext3,
            ),
            TextSpan(
              text: '\tand\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Register',
              style: darktext3,
            ),
            TextSpan(
              text: '\tit.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(height: 5.0),
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
                  'assets/installation/redhatinstallation/26.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/26.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
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
                  'To specify a file or a location to install Red Hat Enterprise Linux from, select\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Installation Source',
              style: darktext3,
            ),
            TextSpan(
              text: '\tform the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Installation Summary',
              style: darktext3,
            ),
            TextSpan(
              text:
                  '\t screen. On this screen, you can choose between locally available installation media,'
                  ' such as a DVD or an ISO file, or a network location.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(height: 5.0),
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
              text: 'option.',
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
                  'assets/installation/redhatinstallation/27.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/27.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Software Selection',
            style: darktext4,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'The common installation types are:',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
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
                  'assets/installation/redhatinstallation/28.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/28.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Installation Destination',
            style: darktext4, textAlign: TextAlign.justify,
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
          const Text(
            'To ensure the partition option and selected the hard disk.',
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
                  'assets/installation/redhatinstallation/29.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/29.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'In my case, I was select\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'Custom ',
              style: darktext3,
            ),
            TextSpan(
              text: 'option to manually create the partitions.',
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
                  'assets/installation/redhatinstallation/30.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/30.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'Now, In the manual partitioning screen. By default, the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'LVM ',
              style: darktext3,
            ),
            TextSpan(
              text: 'partitioning scheme is selected.',
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
              text: 'To creating the partitions, click on the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '[ + ]',
              style: darktext3,
            ),
            TextSpan(
              text: '\tsymbol and to deleting the partitions, click on the \t',
              style: normaltext1,
            ),
            TextSpan(
              text: '[ - ]',
              style: darktext3,
            ),
            TextSpan(
              text: '\tsymbol.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
              'In my case, disk size is 50 GB. so, I was create '
                  'partitions based on my disk size.',style: normaltext1,textAlign: TextAlign.justify,),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: '/boot -	1024MB\n',
              style: darktext3,
            ),
            TextSpan(
              text: '/root -	45GB\n',
              style: darktext3,
            ),
            TextSpan(
              text: 'swap  - 4GB',
              style: darktext3,
            ),
          ])),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'You will create partitions based on your purposes and disk size.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/31.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/31.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Boot partition',
            style: darktext4, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'click on the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '[ + ]',
              style: darktext3,
            ),
            TextSpan(
              text: 'symbol. specify the mount point as\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '/boot ',
              style: darktext3,
            ),
            TextSpan(
              text: 'and size as\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '1024 MB',
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
              text: 'Add mount point',
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
                  'assets/installation/redhatinstallation/32.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/32.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'From the partition table below, you can see that the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '/boot',
              style: darktext3,
            ),
            TextSpan(
              text: '\tpartition has been created. Overview the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '/boot',
              style: darktext3,
            ),
            TextSpan(
              text: '\tpartition.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/33.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/33.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Root partition',
            style: darktext4, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'click on the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '[ + ]',
              style: darktext3,
            ),
            TextSpan(
              text: 'symbol. specify the mount point as\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '/root ',
              style: darktext3,
            ),
            TextSpan(
              text: 'and size as\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '45 GB',
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
              text: 'Add mount point',
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
                  'assets/installation/redhatinstallation/34.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/34.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'From the partition table below, you can see that the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '/root',
              style: darktext3,
            ),
            TextSpan(
              text: '\tpartition has been created. Overview the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '/root',
              style: darktext3,
            ),
            TextSpan(
              text: '\tpartition.',
              style: normaltext1,
            ),
          ])),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/35.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/35.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Swap partition',
            style: darktext4, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'click on the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '[ + ]',
              style: darktext3,
            ),
            TextSpan(
              text: 'symbol. specify the mount point as\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'swap ',
              style: darktext3,
            ),
            TextSpan(
              text: 'and size as\t',
              style: normaltext1,
            ),
            TextSpan(
              text: '4 GB',
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
              text: 'Add mount point',
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
                  'assets/installation/redhatinstallation/36.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/36.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'From the partition table below, you can see that the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'swap',
              style: darktext3,
            ),
            TextSpan(
              text: '\tpartition has been created. Overview the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'swap',
              style: darktext3,
            ),
            TextSpan(
              text: '\tpartition.',
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
              text: 'Now,\t',
              style: normaltext1,
            ),
            TextSpan(
              text: ' /boot, /root, swap',
              style: darktext3,
            ),
            TextSpan(
              text: '\tpartitions are created.',
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
                  'assets/installation/redhatinstallation/37.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/37.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(children: [
            TextSpan(
              text: 'Overview the\t',
              style: normaltext1,
            ),
            TextSpan(
              text: 'SUMMARY OF CHANGES',
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
              text: 'Accept Changes',
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
                  'assets/installation/redhatinstallation/38.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/38.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'KDUMP',
            style: darktext4, textAlign: TextAlign.justify,
          ),
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
                text: 'Enable kdump',
                style: darktext3,
              ),
              TextSpan(
                text: '\tby default.',
                style: normaltext1,
              ),
            ]),
          ),          const SizedBox(
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
                  'assets/installation/redhatinstallation/39.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/39.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Network and Hostname',
            style: darktext4, textAlign: TextAlign.justify,
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
                text: 'Network and Hostname',
                style: darktext3,
              ),
              TextSpan(
                text: '\tsection, turn on the toggle in the network interface. '
                    'Setting host Name is optional.',
                style: normaltext1,
              ),
            ]),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'In my case, I choose default network. If you can change network connection, '
            'you can configure it.',
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
            ]),
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/40.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/40.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Security Profile',
            style: darktext4, textAlign: TextAlign.justify,
          ),
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
                  'assets/installation/redhatinstallation/41.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/41.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Root password',
            style: darktext4,textAlign: TextAlign.justify,
          ),
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
                  'assets/installation/redhatinstallation/42.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/42.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'User Creation',
            style: darktext4, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'In the User Creation, you can set up your user account.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            '\u27A4\t Enter your name.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            '\u27A4\t Enter your user name.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            '\u27A4\t Pick your username.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            '\u27A4\t Pick your password and confirm password.',
            style: normaltext1, textAlign: TextAlign.justify,
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
                  'assets/installation/redhatinstallation/43.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/43.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(children: [
              TextSpan(
                text: 'Now, this\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Installation Summary',
                style: darktext3,
              ),
              TextSpan(
                text: '\tshould ready for the\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'Begin Installation',
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
            'Once again, overview all things.',
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
                text: 'Begin Installation',
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
                  'assets/installation/redhatinstallation/44.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/44.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Overview also User Settings.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/45.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/45.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(children: [
              TextSpan(
                text: 'Red Hat Enterprise Linux',
                style: darktext3,
              ),
              TextSpan(
                text: '\tInstallation is processing.',
                style: normaltext1,
              ),
            ]),
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/46.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/46.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(children: [
              TextSpan(
                text: 'Red Hat Enterprise Linux',
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
                text: 'unmount ',
                style: darktext3,
              ),
              TextSpan(
                text: '\tthe ISO image file. During the reboot process, '
                    'select the first entry and hit ENTER.',
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
                text: 'Click',
                style: normaltext1,
              ),
              TextSpan(
                text: '\tReboot System',
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
                  'assets/installation/redhatinstallation/47.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/47.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(children: [
              TextSpan(
                text: 'Now, Red Hat Enterprise Linux\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'GRUB file',
                style: darktext3,
              ),
              TextSpan(
                text: '\tshow here.',
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
                text: ' Click\t',
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
                  'assets/installation/redhatinstallation/48.png',
                  height: 250.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/48.png',
                  height: 470.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Now, Red Hat Enterprise Linux login page show here.',
            style: normaltext1, textAlign: TextAlign.justify,
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
                  'assets/installation/redhatinstallation/49.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/49.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'In the Red Hat Enterprise Linux login screen. Enter your user password.',
            style: normaltext1, textAlign: TextAlign.justify,
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
                  'assets/installation/redhatinstallation/50.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/50.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Now, Red Hat Enterprise Linux logged successfully.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/51.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/51.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Now, you can explore Red Hat Enterprise Linux.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/52.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/52.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Check, Red Hat Enterprise Linux version.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Use below command in terminal.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'cat /etc/os-release',
            style: commandtext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/53.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/53.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Check, Red Hat Enterprise Linux version.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/54.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/54.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Step 5:- Enable and Disable Red Hat Subscription on RHEL',
            style: darktext2, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Prerequisites',
            style: darktext4, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Register and Enable Red Hat subscription',
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
                    'Once you have Red Hat Enterprise Linux installed, you must\t',
                style: normaltext1,
              ),
              TextSpan(
                text: 'register and enable Red Hat Subscription',
                style: darktext3,
              ),
              TextSpan(
                text: '\tto install any package on your system.',
                style: normaltext1,
              ),
            ]),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Open terminal and enter the below command. '
            'to register and enable RedHat Subscription.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'subscription-manager register --auto-attach',
            style: commandtext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/55.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/55.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Verifying Subscription',
            style: darktext4, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 5.0,),
          const Text(
            'List of attached subscription can be verified by running the below command.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 5.0,),
          const Text(
            'subscription-manager list',
            style: commandtext1,textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/56.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/56.png',
                  height: 600.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Un-registering a system',
            style: darktext4, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 5.0,),
          const Text(
            'Remove all subscriptions from Red Hat to run the below command.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 5.0,),
          const Text(
            'subscription-manager remove --all',
            style: commandtext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10.0,),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/57.png',
                  height: 30.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/57.png',
                  height: 70.0,
                  width: width,
                ),
          const SizedBox(height: 10.0,),
          const Text(
            'To unregister the system from the Red Hat to run the below command.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 5.0,),
          const Text(
            'subscription-manager unregister',
            style: commandtext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10.0,),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/58.png',
                  height: 30.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/58.png',
                  height: 60.0,
                  width: width,
                ),
          const SizedBox(height: 10.0,),
          const Text(
            'To remove all local data from the system from the Red Hat to run the below command.',
            style: normaltext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 5.0,),
          const Text(
            'subscription-manager clean',
            style: commandtext1, textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10.0,),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/59.png',
                  height: 30.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/59.png',
                  height: 45.0,
                  width: width,
                ),
          const SizedBox(
            height: 10.0,
          ),
           const Text('Check, Red Hat Enterprise Linux'
               ' details using neofetch command(Optional).',style: normaltext1,textAlign: TextAlign.justify,),
          const SizedBox(
            height: 10.0,
          ),
          orientation == Orientation.portrait
              ? Image.asset(
                  'assets/installation/redhatinstallation/60.png',
                  height: 300.0,
                  width: width,
                )
              : Image.asset(
                  'assets/installation/redhatinstallation/60.png',
                  height: 600.0,
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
                text: 'Red Hat Enterprise Linux',
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
    ));
  }
}
