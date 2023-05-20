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
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/girl.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SingleChildScrollView(
        child: Center(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
              child: const Text(
                "SoRecover",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(16, 100, 16, 16),
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent.withOpacity(0.7)),
              child: Column(children: [
                const Text(
                  "Connexion",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 250,
                  margin: const EdgeInsets.all(16),
                  child: TextField(
                    controller: username,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Nom d'utilisateur",
                      hintStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  margin: const EdgeInsets.all(16),
                  child: TextField(
                    obscureText: true,
                    controller: password,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: "Mot de passe",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
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
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      print("Coming soon");
                    },
                    child: const Text(
                      "Créer un compte",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ]))
        ])),
      )
    ]));
  }
}
