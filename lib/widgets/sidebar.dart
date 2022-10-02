import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.indigo,
              child: Column(
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 90,
                      child: Hero(
                        tag: "logo",
                        child: Image.asset(
                          'assets/icon/logo-linux.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.hub_sharp),
              title: const Text("Linux Distros"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text("Command List"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About App"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
