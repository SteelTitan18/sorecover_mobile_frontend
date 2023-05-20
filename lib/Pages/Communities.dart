import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sorecover/Pages/Community.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        MediaQuery(
            data: MediaQuery.of(context).copyWith(),
            child: Container(
                padding: const EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView(
                  // This next line does the trick.
                  //physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 8),
                        height: 160.0,
                        color: Colors.red,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Community()),
                        );
                      },
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
                ))),
      ])),
    );
  }
}
