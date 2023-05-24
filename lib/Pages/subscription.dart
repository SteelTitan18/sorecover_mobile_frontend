import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sorecover/Functions/Backend.dart';
import 'package:sorecover/Pages/CurrentPage.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();
    final firstName = TextEditingController();
    final lastName = TextEditingController();
    final email = TextEditingController();
    final city = TextEditingController();
    final neighborhood = TextEditingController();
    final phoneNumber = TextEditingController();

    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
          child: Column(children: [
        Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              controller: username,
              decoration: const InputDecoration(hintText: "Nom d'utilisateur", labelText: "Nom d'utilisateur"),
            )),
        Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              controller: lastName,
              decoration: const InputDecoration(hintText: "Nom", labelText: "Nom"),
            )),
        Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              controller: firstName,
              decoration: const InputDecoration(hintText: "Prénoms", labelText: "Prénoms"),
            )),
        Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              controller: password,
              decoration: const InputDecoration(hintText: "Mot de passe", labelText: "Mott de passe"),
            )),
        Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(hintText: "Email", labelText: "Email"),
            )),
        Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              controller: phoneNumber,
              decoration:
                  const InputDecoration(hintText: "Numéro de téléphone", labelText: "Numéro de téléphone"),
            )),
        Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              controller: city,
              decoration: const InputDecoration(hintText: "Ville", labelText: "Ville"),
            )),
        Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              controller: neighborhood,
              decoration: const InputDecoration(hintText: "Quartier", labelText: "Quartier"),
            )),

            MediaQuery(data: MediaQuery.of(context).copyWith(), child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              margin: const EdgeInsets.all(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {
                  Map form = {
                    'username': username.text,
                    'first_name': firstName.text,
                    'last_name': lastName.text,
                    'type': 'SP',
                    'email': email.text,
                    'password': password.text,
                    'city': city.text,
                    'neighborhood': neighborhood.text,
                    'phone_number': phoneNumber.text,
                  };

                  var response = inscription(form);

                  response.then((value) {
                    if (value.containsKey('last_name')) {
                      var loginRes = login(value['username'], value['password']);
                      loginRes.then((answer) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CurrentPage()),
                        );
                      });
                    }
                    else {
                      Fluttertoast.showToast(
                          msg: "Formulaire non valide",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  });
                },
                child: const Text("Envoyer",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),)
      ])),
    ));
  }
}
