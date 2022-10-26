import 'package:flutter/material.dart';
import 'package:linuxgeek/distros/arch.dart';
import 'package:linuxgeek/distros/blackarch.dart';
import 'package:linuxgeek/distros/blacklab.dart';
import 'package:linuxgeek/distros/bodhi.dart';
import 'package:linuxgeek/distros/bunsenlabs.dart';
import 'package:linuxgeek/distros/centos.dart';
import 'package:linuxgeek/distros/clearos.dart';
import 'package:linuxgeek/distros/debian.dart';
import 'package:linuxgeek/distros/elementary.dart';
import 'package:linuxgeek/distros/fedora.dart';
import 'package:linuxgeek/distros/gentoo.dart';
import 'package:linuxgeek/distros/kali.dart';
import 'package:linuxgeek/distros/kubuntu.dart';
import 'package:linuxgeek/distros/linuxmint.dart';
import 'package:linuxgeek/distros/mageia.dart';
import 'package:linuxgeek/distros/manjaro.dart';
import 'package:linuxgeek/distros/neptune.dart';
import 'package:linuxgeek/distros/netrunner.dart';
import 'package:linuxgeek/distros/opensuse.dart';
import 'package:linuxgeek/distros/parrot.dart';
import 'package:linuxgeek/distros/pclinuxos.dart';
import 'package:linuxgeek/distros/popos.dart';
import 'package:linuxgeek/distros/puppy.dart';
import 'package:linuxgeek/distros/pureos.dart';
import 'package:linuxgeek/distros/slackel.dart';
import 'package:linuxgeek/distros/slackware.dart';
import 'package:linuxgeek/distros/solus.dart';
import 'package:linuxgeek/distros/tails.dart';
import 'package:linuxgeek/distros/ubuntu.dart';
import 'package:linuxgeek/distros/xubuntu.dart';
import 'package:linuxgeek/distros/zorin.dart';

import '../distros/redhat.dart';

class Distros extends StatefulWidget {
  const Distros({Key? key}) : super(key: key);

  @override
  State<Distros> createState() => _DistrosState();
}

class _DistrosState extends State<Distros> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Distros'),
          centerTitle: true,
        ),
        body: Center(
            child: GridView.extent(
              padding: const EdgeInsets.all(12.0),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              maxCrossAxisExtent: 200.0,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Ubuntu()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/distros/ubuntu/ubuntu.png',
                          height: 100.0,
                          width: 100.0,
                        ),
                        const Text(
                          'Ubuntu',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RedHat()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/redhat/redhat.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Red Hat',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CentOS()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/centos/centos.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'CentOS',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Arch()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/arch/arch.jpg',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Arch',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Kali()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/kali/kali.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Kali',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Debian()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/debian/debian.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Debian',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LinuxMint()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/linuxmint/linuxmint.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Linuxmint',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Mageia()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/mageia/mageia.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Mageia',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Kubuntu()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/kubuntu/kubuntu.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Kubuntu',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Bodhi()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/bodhi/bodhi.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Bodhi',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Neptune()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/neptune/neptune.jpg',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Neptune',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Pclinuxos()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/pclinuxos/pclinuxos.jpg',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Pclinuxos',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Bunsenlabs()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/bunsenlabs/bunsenlabs.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Bunsenlabs',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Fedora()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/fedora/fedora.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Fedora',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Solus()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/solus/solus.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Solus',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Puppy()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/puppy/puppy.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Puppy',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Xubuntu()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/xubuntu/xubuntu.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Xubuntu',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Slackel()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/slackel/slackel.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Slackel',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Manjaro()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/manjaro/manjaro.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Manjaro',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PureOS()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/pureos/pureos.PNG',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'PureOS',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Blacklab()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/blacklab/blacklab.PNG',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Blacklab',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Netrunner()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/netrunner/netrunner.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Netrunner',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Zorin()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/zorin/zorin.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Zorin',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Opensuse()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/opensuse/opensuse.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Opensuse',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Slackware()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/slackware/slackware.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Slackware',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Parrot()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/parrot/parrot.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Parrot',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Gentoo()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/gentoo/gentoo.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Gentoo',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Elementary()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/elementary/elementary.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Elementary',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Popos()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/pop!_os/pop!_os.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Pop!_os',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Blackarch()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/blackarch/blackarch.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Blackarch',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tails()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/tails/tails.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Tails',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Clearos()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/distros/clearos/clearos.png',
                        height: 100.0,
                        width: 100.0,
                      ),
                      const Text(
                        'Clearos',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
