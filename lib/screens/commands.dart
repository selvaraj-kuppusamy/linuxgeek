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
    var size = MediaQuery.of(context).size;
     var height = size.height;
    var width = size.width;

    List comandname =[
      'Pwd commnand',
      'mkdir Command',
      'rmdir Command',
      'ls Command',
      'touch Command',
      'cat command',
      'man command'

    ];
    List commandexplanation =[
      'The pwd command is used to display the location of the current working directory.',
      'The mkdir command is used to create a new directory under any directory.',
      'The rmdir command is used to delete a directory.',
      'The ls command is used to display a list of content of a directory.',
      'The touch command is used to create empty files.',
      'cat command is used to concatenate files and print on the standard output.',
      'man command is used to manage the product'

    ];
    List commandsyntax = [
      'pwd',
      'mkdir <directory name>',
      'rmdir <directory name>',
      'ls',
      'touch <file name>',
      'cat <file name>',
      'man'
    ];
    List commandphoto = [
      'assets/commands/pwd.PNG',
      'assets/commands/mkdir.PNG',
      'assets/commands/rmdir.PNG',
      'assets/commands/ls.PNG',
      'assets/commands/touch.PNG',
      'assets/commands/cat.PNG',
      'assets/commands/man.png'
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                orientation == Orientation.portrait?
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: comandname.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 150),
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
                  }, separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 10.0,);
                },

                ):
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: comandname.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 150),
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
                  }, separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 20.0,);
                },

                ),
              ],
            ),
          ),
        ),

      ),
    );

  }
}
