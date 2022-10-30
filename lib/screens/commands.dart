import 'package:flutter/material.dart';
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
          children: [
            Container(
              height: 200,
              color: Colors.yellow,
              child: Column(
                children: [
                  Text('Man'),
                  SizedBox(height: 10.0,),
                  Text('')
                ],
              ),
            )
          ],
        ),

      ),
    );

  }
}
