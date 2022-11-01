import 'package:flutter/material.dart';

import '../widgets/sidebar.dart';
import 'about.dart';
import 'commands.dart';
import 'distros.dart';
import 'installation.dart';
import 'linux.dart';
import 'overview.dart';
class Linux extends StatefulWidget {
  const Linux({Key? key}) : super(key: key);

  @override
  State<Linux> createState() => _LinuxState();
}

class _LinuxState extends State<Linux> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
        drawer: const Sidebar(),
        appBar: AppBar(
          title: const Text('LinuxGeek'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(right: 20.0,left: 20.0 ,top: 30.0,bottom: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Overview()));
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
                            Image.asset('assets/homepage/linux.png',height: 100,width: 100, ),
                            const Text('Overview',style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Whylinux()));
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
                            Image.asset('assets/homepage/think.png',height: 100,width: 100, ),
                            const Text('Why Linux?',style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Distros()));
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
                            Image.asset('assets/homepage/distros.png',height: 100,width: 100, ),
                            const Text('Distros',style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Commands()));
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
                            Image.asset('assets/homepage/command_list.png',height: 100,width: 100, ),
                            const Text('Commands',style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Installation()));
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
                            Image.asset('assets/homepage/installation.png',height: 100,width: 100, ),
                            const Text('Installation',style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const About()));
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
                            Image.asset('assets/homepage/about.png',height: 100,width: 100, ),
                            const Text('About us',style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
