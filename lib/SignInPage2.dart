import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'firebase_login_page.dart';

class SignInPage2 extends StatefulWidget {
  const SignInPage2({Key? key, required this.onSignInPressed}) : super(key: key);

  final VoidCallback onSignInPressed;

  @override
  _SignInPage2State createState() => _SignInPage2State();
}

class _SignInPage2State extends State<SignInPage2> {
  bool _isLoginForm = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _signUpFormKey = GlobalKey<FormState>();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _acceptTermsFocusNode = FocusNode();

  Future<void> _handleSignIn() async {
    if (_loginFormKey.currentState?.validate() ?? false) {
      try {
        final UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        // Connexion réussie
        widget.onSignInPressed();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Aucun utilisateur trouvé pour cet e-mail.')));
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Mot de passe incorrect fourni pour cet utilisateur.')));
        }
      }
    }
  }

  Future<void> _handleSignUp() async {
    if (_signUpFormKey.currentState?.validate() ?? false) {
      try {
        final UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        // Compte créé avec succès
        widget.onSignInPressed();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Le mot de passe fourni est trop faible.')));
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Cet e-mail est déjà utilisé par un autre compte.')));
        }
      }
    }
  }

  Future<void> _handleGoogleAuth() async {
    try {
      final GoogleAuthProvider googleProvider = GoogleAuthProvider();
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithPopup(googleProvider);
      // Connexion ou inscription réussie
      widget.onSignInPressed();
    } catch (e) {
      print('Erreur lors de la connexion ou de l\'inscription avec Google : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Center(
        child: isSmallScreen
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _Logo(),
                  if (_isLoginForm)
                    _LoginFormContent(
                      onSignInPressed: _handleSignIn,
                      emailFocusNode: _emailFocusNode,
                      passwordFocusNode: _passwordFocusNode,
                      formKey: _loginFormKey,
                      emailController: _emailController,
                      passwordController: _passwordController,
                    )
                  else
                    _SignUpFormContent(
                      onSignUpPressed: _handleSignUp,
                      emailFocusNode: _emailFocusNode,
                      passwordFocusNode: _passwordFocusNode,
                      acceptTermsFocusNode: _acceptTermsFocusNode,
                      formKey: _signUpFormKey,
                      emailController: _emailController,
                      passwordController: _passwordController,
                    ),
                  TextButton(
                    child: Text(_isLoginForm ? 'Create an account' : 'Back to login'),
                    onPressed: () {
                      setState(() {
                        _isLoginForm = !_isLoginForm;
                      });
                    },
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.g_mobiledata),
                    label: Text(_isLoginForm ? 'Connexion avec Google' : 'Inscription avec Google'),
                    onPressed: _handleGoogleAuth,
                  )
                ],
              )
            : Container(
                padding: const EdgeInsets.all(32.0),
                constraints: const BoxConstraints(maxWidth: 800),
                child: Row(
                  children: <Widget>[
                    Expanded(child: _Logo()),
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            if (_isLoginForm)
                              _LoginFormContent(
                                onSignInPressed: _handleSignIn,
                                emailFocusNode: _emailFocusNode,
                                passwordFocusNode: _passwordFocusNode,
                                formKey: _loginFormKey,
                                emailController: _emailController,
                                passwordController: _passwordController,
                              )
                            else
                              _SignUpFormContent(
                                onSignUpPressed: _handleSignUp,
                                emailFocusNode: _emailFocusNode,
                                passwordFocusNode: _passwordFocusNode,
                                acceptTermsFocusNode: _acceptTermsFocusNode,
                                formKey: _signUpFormKey,
                                emailController: _emailController,
                                passwordController: _passwordController,
                              ),
                            TextButton(
                              child: Text(_isLoginForm ? 'Create an account' : 'Back to login'),
                              onPressed: () {
                                setState(() {
                                  _isLoginForm = !_isLoginForm;
                                });
                              },
                            ),
                            ElevatedButton.icon(
                              icon: Icon(Icons.g_mobiledata),
                              label: Text(_isLoginForm ? 'Connexion avec Google' : 'Inscription avec Google'),
                              onPressed: _handleGoogleAuth,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/OnePiece.png',
          width: isSmallScreen ? 100 : 200,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Bienvenue sur DBOP!",
            textAlign: TextAlign.center,
            style: isSmallScreen
                ? Theme.of(context).textTheme.headline5
                : Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black),
          ),
        )
      ],
    );
  }
}

class _LoginFormContent extends StatefulWidget {
  final VoidCallback onSignInPressed;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  const _LoginFormContent({
    Key? key,
    required this.onSignInPressed,
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  }) : super(key: key);

  @override
  __LoginFormContentState createState() => __LoginFormContentState();
}

class __LoginFormContentState extends State<_LoginFormContent> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: widget.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              focusNode: widget.emailFocusNode,
              validator: (value) {
                // add email validation
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value);
                if (!emailValid) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
              controller: widget.emailController,
            ),
            _gap(),
            TextFormField(
              focusNode: widget.passwordFocusNode,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_isPasswordVisible
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              controller: widget.passwordController,
            ),
            _gap(),
            CheckboxListTile(
              value: _rememberMe,
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  _rememberMe = value;
                });
              },
              title: const Text('Remember me'),
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
              contentPadding: const EdgeInsets.all(0),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  if (widget.formKey.currentState?.validate() ?? false) {
                    widget.onSignInPressed();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}

class _SignUpFormContent extends StatefulWidget {
  final VoidCallback onSignUpPressed;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  final FocusNode acceptTermsFocusNode;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const _SignUpFormContent({
    Key? key,
    required this.onSignUpPressed,
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.acceptTermsFocusNode,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  __SignUpFormContentState createState() => __SignUpFormContentState();
}

class __SignUpFormContentState extends State<_SignUpFormContent> {
  bool _isPasswordVisible = false;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: widget.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                if (value.length < 3) {
                  return 'Username must be at least 3 characters';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              focusNode: widget.emailFocusNode,
              validator: (value) {
                // add email validation
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value);
                if (!emailValid) {
                  return 'Please enter a valid email';
                }

                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
              controller: widget.emailController,
            ),
            _gap(),
            TextFormField(
              focusNode: widget.passwordFocusNode,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_isPasswordVisible
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              controller: widget.passwordController,
            ),
            _gap(),
            CheckboxListTile(
              focusNode: widget.acceptTermsFocusNode,
              value: _acceptTerms,
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  _acceptTerms = value;
                });
              },
              title: const Text('Accept terms and conditions'),
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
              contentPadding: const EdgeInsets.all(0),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  if (widget.formKey.currentState?.validate() ?? false) {
                    if (_acceptTerms) {
                      widget.onSignUpPressed();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('You must accept the terms and conditions')),
                      );
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
