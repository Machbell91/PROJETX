// ignore_for_file: unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dbop/DeclinaisonPage.dart';
import 'package:dbop/EditionsPage.dart';
import 'LesAnimes.dart';
import 'package:dbop/MoralePage.dart';
import 'package:dbop/footerm.dart';
import 'package:flutter/widgets.dart';
import 'GenesisPage.dart';
import 'MangakaPage.dart';
import 'PremierJpage.dart';
import 'SignInPage2.dart';
import 'TimerWidget.dart';
import 'package:dbop/TimerProvider.dart';
import 'package:dbop/GoogleSignIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'AuthPage.dart';

enum Menu { itemOne, itemTwo, itemThree }

const Color _primaryColor = Color(0xFF002A5C);
const Color _hoverColor = Color(0xFF455A64);
const TextStyle _menuItemTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAlv-PuhmV69Es_8pUqswLCX6cwDn4eKDs",
          authDomain: "myprojo-408ab.firebaseapp.com",
          databaseURL: "https://myprojo-408ab-default-rtdb.europe-west1.firebasedatabase.app",
          projectId: "myprojo-408ab",
          storageBucket: "myprojo-408ab.appspot.com",
          messagingSenderId: "883337053771",
          appId: "1:883337053771:web:0152dbf79d2f83dc362fce"));
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timerWidget = TimerProvider.of(context)?.timerWidget;
    return MaterialApp(
      title: 'DBOP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: HomePage(timerWidget: timerWidget),
    );
  }
}
class HomePage extends StatefulWidget {
  final TimerWidget? timerWidget;
  HomePage({this.timerWidget});
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
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

  Future<void> _showAuthDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AuthPage(
          onEmailSignIn: (email, password) async {
            try {
              UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
              setState(() {
                _isUserLoggedIn = true;
              });
              _startTimer();
              Navigator.of(context).pop();
            } catch (e) {
              print(e);
            }
          },
          onEmailSignUp: (email, password) async {
            try {
              UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
              setState(() {
                _isUserLoggedIn = true;
              });
              _startTimer();
              Navigator.of(context).pop();
            } catch (e) {
              print(e);
            }
          },
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final minutes = (_timeSpentOnSite ~/ 60).toString().padLeft(2, '0');
    final seconds = (_timeSpentOnSite % 60).toString().padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(
        title: Text('DRAGONBALL & ONE PIECE'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('NOUS CONTACTER'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.person),
            offset: const Offset(0, 40),
            onSelected: (String item) {
              if (item == 'Sign Out') {
                _handleSignOut();
              } else if (item == 'Sign In with Google') {
                _handleSignInWithGoogle();
              } else {
                _showAuthDialog();
              }
            },
            itemBuilder: (BuildContext context) => [
              if (_isUserLoggedIn)
                const PopupMenuItem<String>(
                  value: 'Sign Out',
                  child: Text('Sign Out'),
                )
              else ...[
                const PopupMenuItem<String>(
                  value: 'Sign In with Google',
                  child: Text('Sign In with Google'),
                ),
                const PopupMenuItem<String>(
                  value: 'Auth',
                  child: Text('Sign In / Sign Up'),
                ),
              ],
            ],
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/Uuuuuu.png',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              NavigationMenu(
                onItemSelected: (int index) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      switch (index) {
                        case 0:
                          return MangakaPage(akiraToriyamaBio: '', eiichiroOdaBio: '',);
                        case 1:
                          return GenesisPage(akiraToriyamaText: '', eiichiroOdaText: '',);
                        case 2:
                          return LesAnimes(dragonBallSeries: '', onePieceSeries: '',);
                        case 3:
                          return DeclinaisonPage(dragonBallText: '', onePieceText: '',);
                        case 4:
                          return EditionsPage(dragonBallText: '', onePieceText: '',);
                        case 5:
                          return PremierJpage(top3JeuxDragonBall: '', top3JeuxOnePiece: '',);
                        case 6:
                          return MoralePage(dragonBallText: '', onePieceText: '',);
                        default:
                          return Container();
                      }
                    }),
                  );
                  _saveTimeSpentOnSite();
                },
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          if (_isUserLoggedIn)
            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.black.withOpacity(0.5),
                child: Text(
                  'Temps passé sur le site : $minutes:$seconds',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: FooterWidget(),
    );
  }
}

class NavigationMenu extends StatelessWidget {
  final ValueChanged<int> onItemSelected;
  const NavigationMenu({required this.onItemSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              height: 20.0,
              width: double.infinity,
              color: Colors.transparent,
              child: Center(
                child: Text(
                  'DBOP',
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
              ),
            ),
          ),
            NavigationMenuItem(title: 'LES MANGAKA', index: 0, onItemSelectedWithIndex: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MangakaPage(akiraToriyamaBio: '', eiichiroOdaBio: '',)),
              );
            }, onItemSelected: (int value) {  },),
            NavigationMenuItem(title: 'LA GENÈSE', index: 0, onItemSelectedWithIndex: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GenesisPage(akiraToriyamaText: '', eiichiroOdaText: '',)),
              );
            }, onItemSelected: (int value) {  },),
            NavigationMenuItem(title: 'LES ANIMATIONS', index: 0, onItemSelectedWithIndex: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LesAnimes(dragonBallSeries: '', onePieceSeries: '',)),
              );
            }, onItemSelected: (int value) {  },),
            NavigationMenuItem(title: 'LES DÉCLINAISONS', index: 0, onItemSelectedWithIndex: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DeclinaisonPage(dragonBallText: '', onePieceText: '',)),
              );
            }, onItemSelected: (int value) {  },),
            NavigationMenuItem(title: 'LES ÉDITIONS', index: 0, onItemSelectedWithIndex: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditionsPage(dragonBallText: '', onePieceText: '',)),
              );
            }, onItemSelected: (int value) {  },),
            NavigationMenuItem(title: 'LE TOP DES JEUX-VIDÉOS', index: 0, onItemSelectedWithIndex: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PremierJpage(top3JeuxDragonBall: '', top3JeuxOnePiece: '',)),
              );
            }, onItemSelected: (int value) {  },),
            NavigationMenuItem(title: 'LA VISION MORALE', index: 0, onItemSelectedWithIndex: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MoralePage(dragonBallText: '', onePieceText: '',)),
              );
            }, onItemSelected: (int value) {  },),
        ],
      ),
    );
  }
}
class NavigationMenuItem extends StatefulWidget {
  final String title;
  final int index;
  final ValueChanged<int> onItemSelected;
  final Function(int)? onItemSelectedWithIndex;
  const NavigationMenuItem({required this.title, required this.index, required this.onItemSelected, this.onItemSelectedWithIndex});
 
 @override
  _NavigationMenuItemState createState() => _NavigationMenuItemState();
}
class _NavigationMenuItemState extends State<NavigationMenuItem>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _animationController;
  late Animation<double> _colorAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _colorAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
  return MouseRegion(
    onEnter: (event) {
      setState(() {
        _isHovered = true;
      });
      _animationController.forward();
    },
    onExit: (event) {
      setState(() {
        _isHovered = false;
      });
      _animationController.reverse();
    },
    child: Material(
      color: Color.lerp(_primaryColor, _hoverColor, _colorAnimation.value),
      child: InkWell(
        onTap: () {
          if (widget.onItemSelectedWithIndex != null) {
            widget.onItemSelectedWithIndex!(widget.index);
          }
          HapticFeedback.selectionClick();
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            widget.title,
            style: _menuItemTextStyle,
          ),
        ),
      ),
    ),
  );
}

}
