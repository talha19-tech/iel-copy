import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iel/Widgets/EntryField.dart';

import '../../Functions.dart';
import 'Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<ScaffoldState> _scaffoldLoginkey =
      new GlobalKey<ScaffoldState>();
  TextEditingController emailController;
  TextEditingController passController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  void signIn() {
    if (emailController.text.trim().isEmpty) {
      Functions.showSnackBar(_scaffoldLoginkey, "Invalid Email", Colors.red);
    } else if (passController.text.trim().isEmpty) {
      Functions.showSnackBar(_scaffoldLoginkey, "Invalid Password", Colors.red);
    } else {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passController.text)
          .catchError((onError) => {
                Functions.showSnackBar(
                    _scaffoldLoginkey, onError.tostring(), Colors.red)
              });
    }
  }

  void goToRegister() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return Register();
        },
      ),
    );
  }

  void goBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldLoginkey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: goBack,
                ),
                SizedBox(height: 20),
                Text(
                  'Hello ',
                  style: TextStyle(
                    fontSize: 62,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                const Text.rich(
                  TextSpan(
                    text: 'There',
                    style: TextStyle(
                      fontSize: 62,
                      fontWeight: FontWeight.bold,
                    ), // default text style
                    children: <TextSpan>[
                      TextSpan(
                          text: '.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                EntryField('Email', TextInputType.emailAddress, emailController,
                    false, Icons.mail),
                SizedBox(height: 10),
                EntryField('Password', TextInputType.text, passController, true,
                    Icons.remove_red_eye),
                SizedBox(height: 10),
                SizedBox(
                  height: 70,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        FlatButton(
                          onPressed: goToRegister,
                          child: Text(
                            'Register',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        padding: const EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: signIn,
                        child: Text(
                          'sign in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
