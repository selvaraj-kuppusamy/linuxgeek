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
    var orientation = MediaQuery.of(context).orientation;
    //size of the window
    //var size = MediaQuery.of(context).size;
    // var height = size.height;
    //var width = size.width;

    List comandname =[
      'Pwd commnand',
      'mkdir Command',
      'rmdir Command',
      'ls Command',
      'touch Command',
      'cat command'

    ];
    List commandexplanation =[
      'The pwd command is used to display the location of the current working directory.',
      'The mkdir command is used to create a new directory under any directory.',
      'The rmdir command is used to delete a directory.',
      'The ls command is used to display a list of content of a directory.',
      'The touch command is used to create empty files.',
      'cat command is used to concatenate files and print on the standard output.'

    ];
    List commandsyntax = [
      'pwd',
      'mkdir <directory name>',
      'rmdir <directory name>',
      'ls',
      'touch <file name>',
      'cat <file name>',
    ];
    List commandphoto = [
      'assets/commands/pwd.PNG',
      'assets/commands/mkdir.PNG',
      'assets/commands/rmdir.PNG',
      'assets/commands/ls.PNG',
      'assets/commands/touch.PNG',
      'assets/commands/cat.PNG',
    ];
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6f2ff),
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
            orientation == Orientation.portrait?
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:1,
                mainAxisSpacing: 20.0,
                childAspectRatio: 1.9,
              ),
              itemCount: comandname.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                       Text(comandname[index],style: darktext3,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                       Text(commandexplanation[index],style: normaltext1,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                      const Text('Syntax:',style: darktext3,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                       Text(commandsyntax[index],style: commandtext1,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                      const Text('Output:',style: darktext3,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                      Image.asset(
                        commandphoto[index].toString(),
                      ),
                    ],
                  ),
                );
              },

            ):
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:1,
                mainAxisSpacing: 20.0,
                childAspectRatio: 4.0,
              ),
              itemCount: comandname.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                       Text(comandname[index],style: darktext3,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                       Text(commandexplanation[index],style: normaltext1,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                      const Text('Syntax:',style: darktext3,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                       Text(commandsyntax[index],style: commandtext1,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                      const Text('Output:',style: darktext3,textAlign: TextAlign.justify,),
                      const SizedBox(height: 5.0,),
                      Image.asset(
                        commandphoto[index].toString(),
                      ),
                    ],
                  ),
                );
              },

            ),
          ],
        ),

      ),
    );

  }
}
