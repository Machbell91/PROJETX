import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'thome.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                final _emailController = TextEditingController();
                final _passwordController = TextEditingController();

                Future<void> _login() async {
                  try {
                    final response = await http.post(
                      Uri.parse('http://localhost/login.php'),
                      body: {
                        'email': _emailController.text,
                        'password': _passwordController.text,
                      },
                    );

                    if (response.statusCode == 200) {
                      // La connexion a réussi
                      final jsonResponse = json.decode(response.body);
                      // Traiter la réponse JSON du serveur

                      // Rediriger l'utilisateur vers la page THome
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => THome()),
                      );
                    } else {
                      // La connexion a échoué
                      throw Exception('Échec de la connexion');
                    }
                  } catch (e) {
                    // Une erreur s'est produite lors de la connexion au serveur
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Erreur de connexion'),
                          content: Text('Impossible de se connecter au serveur. Veuillez réessayer plus tard.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                }

                return AlertDialog(
                  title: Text('Connexion'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Adresse e-mail',
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Mot de passe',
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Annuler'),
                    ),
                    ElevatedButton(
                      onPressed: _login,
                      child: Text('Connexion'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Connexion'),
        ),
      ),
    );
  }
}
