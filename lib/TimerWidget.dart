import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _timeSpentOnSite = 0;
  bool _isUserLoggedIn = false;
  Stopwatch _stopwatch = Stopwatch();
  late Timer _timer;

  void _handleSignIn() {}

  Future<void> _handleSignInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
      clientId: '883337053771-bk6t4e39hrn55pc0gm93n6qd3lub00al.apps.googleusercontent.com').signIn();
      if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);

      setState(() {
        _isUserLoggedIn = true;
        _stopwatch.reset();
        _startTimer();
      });
    } catch (e) {
      print(e);
    }
  }

  void _startTimer() {
    _stopwatch.start();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        _timeSpentOnSite = _stopwatch.elapsedMilliseconds ~/ 1000;
      });
    });
  }

  void _stopTimer() {
    _timer.cancel();
    _stopwatch.stop();
  }

  @override
  void initState() {
    super.initState();
    _getTimeSpentOnSite();
  }

  Future<void> _getTimeSpentOnSite() async {
    final prefs = await SharedPreferences.getInstance();
    final timeSpentOnSite = prefs.getInt('timeSpentOnSite') ?? 0;
    setState(() {
      _timeSpentOnSite = timeSpentOnSite;
    });
  }

  Future<void> _saveTimeSpentOnSite() async {
    final prefs = await SharedPreferences.getInstance();
    final newTimeSpentOnSite = _timeSpentOnSite + 1;
    await prefs.setInt('timeSpentOnSite', newTimeSpentOnSite);
    setState(() {
      _timeSpentOnSite = newTimeSpentOnSite;
    });
  }

  void _handleSignOut() {
    setState(() {
      _isUserLoggedIn = false;
      _stopTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    final minutes = (_timeSpentOnSite ~/ 60).toString().padLeft(2, '0');
    final seconds = (_timeSpentOnSite % 60).toString().padLeft(2, '0');

    return Text(
      'Temps passé sur le site : $minutes:$seconds',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
