import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sorecover/Functions/Backend.dart';
import 'package:sorecover/Pages/CurrentPage.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white38,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(children: [
            Container(
              width: 250,
              margin: const EdgeInsets.fromLTRB(16, 200, 16, 16),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Nom d'utilisateur"),
              ),
            ),
            Container(
              width: 250,
              margin: const EdgeInsets.all(16),
              child: TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Mot de passe"),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                onPressed: () {
                  var response = login(username.text, password.text);
                  print(response);
                  if (response != " ") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CurrentPage()),
                    );
                  }
                },
                child: const Text("Connexion",
                    style: TextStyle(color: Colors.white)),
              ),
            )
          ])),
        ));
  }
}
