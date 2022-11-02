import 'package:flutter/material.dart';

import '../utils/textstyle.dart';

class Whylinux extends StatefulWidget {
  const Whylinux({Key? key}) : super(key: key);

  @override
  State<Whylinux> createState() => _WhylinuxState();
}

class _WhylinuxState extends State<Whylinux> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Why Linux?'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: const [
            Text(
              'Why Use Linux?',
              style: darktext1,textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5.0,),
            Text('Linux is much different from other operating systems in several ways.',
              style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(height: 10.0,),
            Text('1. Linux is an open-source operating system '
    'that allows programmers to create their own bespoke operating systems.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(height: 10.0,),
            Text('2. Linux  provides various applications with various '
                'characteristics from which to pick based on your requirements.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(height: 10.0,),
            Text('3. A worldwide development community is looking at numerous methods '
                'to improve its security, which is very safe and resilient. '
                'You don\'t need to scan it routinely with an anti-virus program. '
                'Linux is used by companies such as Google, Amazon, and Facebook to'
                ' defend their servers since it is very trustworthy and stable.',style: normaltext1,textAlign: TextAlign.justify,),
                SizedBox(height: 10.0,),
                 Text('4. Linux is completely free, and you may install it on as many computers as you wish.',
                   style: normaltext1,textAlign: TextAlign.justify,),
               SizedBox(height: 10.0,),
               Text('5. An entirely trouble-free operating system does not cause viruses,'
                   ' spyware, or computer slowdown.',style: normaltext1,textAlign: TextAlign.justify,),
               SizedBox(height: 20.0,),
            Text(
              'Linux Features',
              style: darktext1,textAlign: TextAlign.justify,
            ),
             SizedBox(
              height: 10.0,
            ),
            Text('Open-source:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text(' Multiple users can access the same system resources '
                'like memory, hard disk, etc. But they have to use different terminals to operate.',style: normaltext1, textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('Multitasking:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('More than one function can be performed simultaneously '
                'by dividing the CPU time intelligently.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('Portability:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('More than one function can be performed simultaneously '
                'by dividing the CPU time intelligently.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('Security:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('It provides security in three ways namely authenticating (by assigning password and login ID), '
                'authorization (by assigning permission to read, write and execute)'
                ' and encryption (converts file into an unreadable format).',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('Live CD/USB:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('Almost all Linux distros provide live CD/USB so that users can run/try it without installing it.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('Graphical User Interface:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('Linux is command line based OS but it can be converted to GUI based by installing packages.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('Support\'s customized keyboard:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('As it is used worldwide, hence supports different languages keyboards.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('Application support:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('It has its own software repository from where users can download and install many applications.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('File System:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('Provides hierarchical file system in which files and directories are arranged.',style: normaltext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 10.0,
            ),
            Text('Open Source:', style: middletext1,textAlign: TextAlign.justify,),
            SizedBox(
              height: 5.0,
            ),
            Text('Linux code is freely available to all and is a community based development project.',style: normaltext1,textAlign: TextAlign.justify,),


          ],
        ),
      ),
    );
  }
}
