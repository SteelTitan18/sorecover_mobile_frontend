import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(padding: const EdgeInsets.all(8),alignment: Alignment.topLeft,child: const Text("Membres")),
        Container(
            padding: const EdgeInsets.all(8),
            height: 100,
            child: ListView(
              // This next line does the trick.
              //physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: const ListTile(
                    title: Icon(Icons.person),
                    subtitle: Text("UserName"),
                  ),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: const ListTile(
                    title: Icon(Icons.person),
                    subtitle: Text("UserName"),
                  ),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: const ListTile(
                    title: Icon(Icons.person),
                    subtitle: Text("UserName"),
                  ),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: const ListTile(
                    title: Icon(Icons.person),
                    subtitle: Text("UserName"),
                  ),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: const ListTile(
                    title: Icon(Icons.person),
                    subtitle: Text("UserName"),
                  ),
                ),
              ],
            )),
        Container(padding: const EdgeInsets.all(8),alignment: Alignment.topLeft,child: const Text("Projets en cours")),
        Container(
            padding: const EdgeInsets.all(8),
            height: 500,
            child: ListView(
              // This next line does the trick.
              //physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  height: 160.0,
                  color: Colors.red,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  height: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  height: 160.0,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  height: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  height: 160.0,
                  color: Colors.orange,
                ),
              ],
            )),
      ])),
    );
  }
}
