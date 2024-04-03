// ignore: unused_import
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dragon Ball & One Piece',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dragon Ball & One Piece'),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _showLoginDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Connexion'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: 'Email'),
                  controller: _emailController,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Mot de passe'),
                  obscureText: true,
                  controller: _passwordController,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Connexion'),
              onPressed: () {
                // Get the email and password from the text fields
                String email = _emailController.text;
                String password = _passwordController.text;

                // Send a POST request to the login.php file with the email and password
                http.post(Uri.parse('https://localhost:3800/login.php'), body: {
                  'email': email,
                  'password': password,
                }).then((response) {
                  // Check the response from the server
                  if (response.body == 'Login successful') {
                    // Navigate to the home page
                    Navigator.pushReplacementNamed(context, '/');
                  } else {
                    // Show an error message
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Failed to login'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                });
              },
            ),
          ],
        );
      },
    );
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/uuuuuu.png',
              width: 300,
              height: 250,
            ),
            const Text(
              'Bienvenue sur le site web DBOP!',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showLoginDialog();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.login),
                  SizedBox(width: 10),
                  Text('Connexion'),
                ],
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.person_add),
                  SizedBox(width: 10),
                  Text('S\'enregistrer'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    // Get the email and password from the text fields
    String email = _emailController.text;
    String password = _passwordController.text;

    // Send a POST request to the login.php file with the email and password
    http.post(Uri.parse('https://localhost:3800/login.php'), body: {
      'email': email,
      'password': password,
    }).then((response) {
      stdout.write(response);
      // Check the response from the server
      if (response.body == 'Login successful') {
        // Navigate to the home page
        Navigator.pushReplacementNamed(context, '/');
      } else {
        // Show an error message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Failed to login'),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }).catchError((error) {
      // Show an error message
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to connect to server'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Adresse e-mail',
              ),
              controller: _emailController,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Mot de passe',
              ),
              obscureText: true,
              controller: _passwordController,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child: Text('Connexion'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _register() async {
    // Get the username, email and password from the text fields
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    // Send a POST request to the register.php file with the username, email and password
    http.post(Uri.parse('https://localhost:3800/register'), body: {
      'username': username,
      'email': email,
      'password': password,
    }).then((response) {
      stdout.write(response);
      // Check the response from the server
      if (response.body == 'Registration successful') {
        // Navigate to the login page
        Navigator.pushReplacementNamed(context, '/login');
      } else {
        // Show an error message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Failed to register'),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }).catchError((error) {
      // Show an error message
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to connect to server'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('S\'enregistrer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Nom d\'utilisateur',
              ),
              controller: _usernameController,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Adresse e-mail',
              ),
              controller: _emailController,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Mot de passe',
              ),
              obscureText: true,
              controller: _passwordController,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _register();
              },
              child: Text('S\'enregistrer'),
            ),
          ],
        ),
      ),
    );
  }
}
