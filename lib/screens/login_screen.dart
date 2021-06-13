import 'package:flutter/material.dart';
import 'package:uber_user/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String idScreen = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 35.0,
                ),
                Image(
                  image: AssetImage("UberResources/images/logo.png"),
                  height: 350.0,
                  width: 350.0,
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Login as a Rider',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: "Brand Bold",
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0)),
                  color: Colors.yellow,
                  textColor: Colors.black,
                  child: Container(
                    height: 50.0,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RegistrationScreen.idScreen, (route) => false);
                  },
                  child: Text(
                    "Do not have an Account? Register here",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}