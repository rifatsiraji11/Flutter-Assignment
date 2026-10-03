import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage 64B"),
        backgroundColor: const Color.fromARGB(255, 165, 180, 124),
        foregroundColor: Colors.white,
        //leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              hoverColor: Colors.blueGrey,
              title: Text("Setting"),
              onTap: () {},
            ),

            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              hoverColor: Colors.blueGrey,
              title: Text("Homepage"),
              onTap: () {},
            ),

            Divider(),
            Spacer(),

            ListTile(
              leading: Icon(Icons.person),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              hoverColor: Colors.blueGrey,
              title: InkWell(child: Text("Profile"), onTap: () {}),
            ),
          ],
        ),
      ),
      body: Text(
        "Welcome to homepage!",
        style: TextStyle(
          fontSize: 30,
          color: const Color.fromARGB(255, 4, 253, 62),
        ),
      ),
    );
  }
}