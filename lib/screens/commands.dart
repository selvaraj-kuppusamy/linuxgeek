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
      'cd Command',
      'rm Command',
      'cp Command',
      'mv Command',
      'rename Command',
      'head Command',
      'tail Command',
      'tac Command',
      'more command',
      'less Command',
      'su Command',
      'id Command',
      'useradd Command',
      'passwd Command',


    ];
    List commandexplanation =[
      'The pwd command is used to display the location of the current working directory.',
      'The mkdir command is used to create a new directory under any directory.',
      'The rmdir command is used to delete a directory.',
      'The ls command is used to display a list of content of a directory.',
      'The touch command is used to create empty files.',
      'cat command is used to concatenate files and print on the standard output.t can be used to create a file.'
          ' display content of the file, copy the content of one file to another file, and more.',
      'The cd command is used to change the current directory.',
      'The rm command is used to remove a file.',
      'The cp command is used to copy a file or directory.',
      'The mv command is used to move a file or a directory form one location to another location.',
      'The rename command is used to rename files. It is useful for renaming a large group of files.',
      'The head command is used to display the content of a file. It displays the first 10 lines of a file.',
      'The tail command is similar to the head command. The difference between both commands is that it displays the last ten lines of the file content. It is useful for reading the error message.',
      'The tac command is the reverse of cat command, as its name specified. It displays the file content in reverse order (from the last line).',
      'The more command is quite similar to the cat command, as it is used to display the file content in the same way that the cat command does. The only difference between both commands is that, in case of larger files, the more command displays screenful output at a time.\nIn more command, the following keys are used to scroll the page:\nENTER key: To scroll down page by line.\nSpace bar: To move to the next page.\nb key: To move to the previous page.\n/ key: To search the string.',
      'The less command is similar to the more command. It also includes some extra features such as \'adjustment in width and height of the terminal.\' Comparatively, the more command cuts the output in the width of the terminal.',
      'The su command provides administrative access to another user. In other words, it allows access of the Linux shell to another user.',
      'The id command is used to display the user ID (UID) and group ID (GID).',
      'The useradd command is used to add or remove a user on a Linux server.',
      'The passwd command is used to create and change the password for a user.',

    ];
    List commandsyntax = [
      'pwd',
      'mkdir <directory name>',
      'rmdir <directory name>',
      'ls',
      'touch <file name>',
      'cat <file name>',
      'cd <directory name>',
      'rm <file name>',
      'cp <existing file name or existing directory> <new file name or new directory>',
      'mv <file name> <directory path>',
      'rename \'s/old-name/new-name/\' files',
      'head <file name>',
      'tail <file name>',
      'tac <file name>',
      'more <file name> ',
      'less <file name>',
      'su <user name>',
      'id',
      'useradd  username',
      'passwd <username>',
    ];
    List commandphoto = [
      'assets/commands/pwd.PNG',
      'assets/commands/mkdir.PNG',
      'assets/commands/rmdir.PNG',
      'assets/commands/ls.PNG',
      'assets/commands/touch.PNG',
      'assets/commands/cat.PNG',
      'assets/commands/cd.PNG',
      'assets/commands/rm.PNG',
      'assets/commands/cp.PNG',
      'assets/commands/mv.PNG',
      'assets/commands/rename.PNG',
      'assets/commands/head.PNG',
      'assets/commands/tail.PNG',
      'assets/commands/tac.PNG',
      'assets/commands/more.PNG',
      'assets/commands/less.PNG',
      'assets/commands/root.PNG',
      'assets/commands/id.PNG',
      'assets/commands/useradd.PNG',
      'assets/commands/useradd.PNG'




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
