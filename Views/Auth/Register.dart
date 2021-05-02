import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iel/Widgets/EntryField.dart';

import '../../Functions.dart';
import 'Login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<ScaffoldState> _scaffoldRegisterkey =
      new GlobalKey<ScaffoldState>();
  TextEditingController emailController;
  TextEditingController nameController;
  TextEditingController passController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    nameController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passController.dispose();
    super.dispose();
  }

  void goToSignin() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return Login();
        },
      ),
    );
  }

  void goBack() {
    Navigator.of(context).pop();
  }

  void register() {
    if (emailController.text.trim().isEmpty) {
      Functions.showSnackBar(_scaffoldRegisterkey, "Invalid Email", Colors.red);
    } else if (passController.text.trim().isEmpty) {
      Functions.showSnackBar(
          _scaffoldRegisterkey, "Invalid Password", Colors.red);
    } else {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passController.text)
          .catchError((onError) => {
                Functions.showSnackBar(
                    _scaffoldRegisterkey, onError.toString(), Colors.red)
              });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldRegisterkey,
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
                  'Lets register',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Opportunity waiting!",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 50),
                EntryField('Name', TextInputType.text, nameController, false,
                    Icons.account_circle),
                SizedBox(
                  height: 10,
                ),
                EntryField('Email', TextInputType.emailAddress, emailController,
                    false, Icons.mail),
                SizedBox(
                  height: 10,
                ),
                EntryField('Password', TextInputType.text, passController, true,
                    Icons.remove_red_eye),
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
                          onPressed: goToSignin,
                          child: Text(
                            'Sign in',
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
                        padding: const EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: register,
                        child: Text(
                          'Register',
                          style: TextStyle(),
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
