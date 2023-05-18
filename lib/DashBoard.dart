import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(8),
          child: const Text(
            "Vos communautés",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 16),
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            )),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(8),
          child: const Text(
            "Vos projets",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            padding: const EdgeInsets.all(8),
            height: 500,
            child: ListView(
              // This next line does the trick.
              //physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  height: 160.0,
                  color: Colors.red,
                ),
                Container(
                  height: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  height: 160.0,
                  color: Colors.green,
                ),
                Container(
                  height: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  height: 160.0,
                  color: Colors.orange,
                ),
              ],
            )),
      ])),
    );
  }
}
