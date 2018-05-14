import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = new Hero(
      tag: 'hero',
      child: new CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: new Image.asset('assets/logo.png'),
      ),
    );

    final email = new TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'alucard@gmail.com',
      decoration: new InputDecoration(
        hintText: 'Email',
        contentPadding: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: new OutlineInputBorder(borderRadius: new BorderRadius.circular(32.0)),
      ),
    );

    final password = new TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: new InputDecoration(
        hintText: 'Password',
        contentPadding: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: new OutlineInputBorder(borderRadius: new BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = new Padding(
      padding: new EdgeInsets.symmetric(vertical: 16.0),
      child: new Material(
        borderRadius: new BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: new MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
          color: Colors.lightBlueAccent,
          child: new Text('Log In', style: new TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = new FlatButton(
      child: new Text(
        'Forgot password?',
        style: new TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final contactUs = new FlatButton(
      child: new Text(
        'Contact Us',
        style: new TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new ListView(
          shrinkWrap: true,
          padding: new EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            new SizedBox(height: 48.0),
            email,
            new SizedBox(height: 8.0),
            password,
            new SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            new FlatButton(
              child: new Text(
                'FAQ',
                style: new TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/faq');
              },
            ),
            new FlatButton(
              child: new Text(
                'Contact Us',
                style: new TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/contactus');
              },
            ),

          ],
        ),
      ),
    );
  }
}