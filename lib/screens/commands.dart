import 'package:flutter/material.dart';
import 'package:linuxgeek/utils/textstyle.dart';
class Commands extends StatefulWidget {
  const Commands({Key? key}) : super(key: key);

  @override
  State<Commands> createState() => _CommandsState();
}

class _CommandsState extends State<Commands> {
  @override
  Widget build(BuildContext context) {
   // var orientation = MediaQuery.of(context).orientation;
    //size of the window
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;

    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Commands'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Container(
              height: 200,
              color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 10.0,),
                  const Text('pwd Command',style: darktext3,),
                  const Text('The pwd command is used to display the location of the current working directory.',style: normaltext1,),
                  const Text('Syntax:',style: darktext3,),
                  const Text('Pwd',style: commandtext1,),
                  const Text('Output:',style: darktext3,),
                   Image.asset('assets/commands/pwd.PNG')
                ],
              ),
            )
          ],
        ),

      ),
    );

  }
}
