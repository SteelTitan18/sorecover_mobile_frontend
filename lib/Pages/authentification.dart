import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sorecover/Functions/Backend.dart';
import 'package:sorecover/Pages/CurrentPage.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Column(children: [
        Container(
            margin: const EdgeInsets.only(top: 100),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              const Text("so",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.bold)),
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue,),
                  padding: const EdgeInsets.all(5),
                  child: const Text("Recover",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold))),
            ])),
        Container(
            margin: const EdgeInsets.fromLTRB(16, 100, 16, 16),
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(children: [
              const Text(
                "Connexion",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 250,
                margin: const EdgeInsets.all(16),
                child: TextField(
                  controller: username,
                  style: const TextStyle(color: Colors.black),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white12,
                    hintText: "Nom d'utilisateur",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                width: 250,
                margin: const EdgeInsets.all(16),
                child: TextField(
                  obscureText: true,
                  controller: password,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white12,
                    hintText: "Mot de passe",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    var response = login(username.text, password.text);

                    response.then((value) {
                      if (value.containsKey('token')) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CurrentPage()),
                        );
                      }
                      else {
                        Fluttertoast.showToast(
                            msg: "Identifiant ou mot de passe incorrect ! Rééssayez !",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    });

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
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ),
              )
            ]))
      ])),
    ));
  }
}
