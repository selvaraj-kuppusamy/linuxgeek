import 'package:flutter/material.dart';
import 'package:linuxgeek/utils/textstyle.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
          backgroundColor: const Color(0xffe6f2ff),
          appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('About Us'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15.0),
          children: const [
                Text('Linuxgeek is Linux learning application.',style: normaltext1,),
                SizedBox(height: 3.0,),
                Text('Contact for any queries:',style: darktext3,),
                 SizedBox(height: 3.0,),
                Text('Email : selvarajkuppusamymsc2019@gmail.com',style: darktext3,),
                SizedBox(height: 3.0,),
                Text('Buy Coffee for me:',style: darktext3,),
                SizedBox(height: 3.0,),
                Text('velmanikpvs@oksbi',style: darktext3,),
          ],
        )
      ),
    );
  }
}
