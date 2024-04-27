// ignore_for_file: unused_field

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'auth_service.dart';

enum AuthFormType { login, register }

class AuthPage extends StatefulWidget {
  final Function(String, String)? onEmailSignIn;
  final Function(String, String)? onEmailSignUp;

  AuthPage({this.onEmailSignIn, this.onEmailSignUp});

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _email = ValueNotifier<String>('');
  final _password = ValueNotifier<String>('');
  final _formKey = GlobalKey<FormState>();
  AuthFormType _authFormType = AuthFormType.login;
  bool _isLoading = false;
  int _failedLoginAttempts = 0;

  final AuthService _authService = AuthService();
  final RegExp _emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  final RegExp _passwordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  Future<void> _login() async {
    try {
      await _authService.signInWithEmailAndPassword(_email.value, _password.value);
      if (widget.onEmailSignIn != null) {
        widget.onEmailSignIn!(_email.value, _password.value);
      }
      _showSuccessDialog('Connexion réussie', 'Vous êtes maintenant connecté.');
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erreur : ${e.message}')),
      );
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        _failedLoginAttempts++;
        if (_failedLoginAttempts >= 5) {
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erreur : $e')),
      );
    }
  }

  Future<void> _register() async {
    try {
      UserCredential userCredential = await _authService.createUserWithEmailAndPassword(_email.value, _password.value);
      await _authService.sendEmailVerification(userCredential.user!);
      if (widget.onEmailSignUp != null) {
        widget.onEmailSignUp!(_email.value, _password.value);
      }
      _showSuccessDialog('Inscription réussie', 'Votre compte a été créé avec succès. Un e-mail de vérification vous a été envoyé.');
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erreur : ${e.message}')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erreur : $e')),
      );
    }
  }

  Future<void> _showSuccessDialog(String title, String content) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(content),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 24.0,
        );
      },
    ).then((value) => Navigator.of(context).pop());
  }

  void _toggleAuthFormType() {
    setState(() {
      _authFormType = _authFormType == AuthFormType.login ? AuthFormType.register : AuthFormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Connexion / Inscription')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez saisir un email';
                } else if (!_emailRegex.hasMatch(value)) {
                  return 'Veuillez saisir un email valide';
                }
                return null;
              },
              onChanged: (value) => _email.value = value,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez saisir un mot de passe';
                } else if (!_passwordRegex.hasMatch(value)) {
                  return 'Le mot de passe doit contenir au moins une lettre majuscule, une lettre minuscule, un chiffre, un caractère spécial et avoir une longueur minimale de 8 caractères';
                }
                return null;
              },
              onChanged: (value) => _password.value = value,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _isLoading ? null : (_authFormType == AuthFormType.login ? _login : _register),
              child: Text(_authFormType == AuthFormType.login ? 'Connexion' : 'Inscription'),
            ),
            TextButton(
              onPressed: _toggleAuthFormType,
              child: Text(_authFormType == AuthFormType.login ? 'Créer un compte' : 'Déjà un compte ? Connectez-vous'),
            ),
          ],
        ),
      ),
    );
  }
}
