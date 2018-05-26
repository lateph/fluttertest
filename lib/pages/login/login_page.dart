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
        radius: 50.0,
        child: new Image.asset('assets/logo.png'),
      ),
    );

    final welcomeText = new FlatButton(
      child: new Text(
        'Welcome to Godeals',
        style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );

    final welcomeText2 = new FlatButton(
      child: new Text(
        'First Wholesale Hotel Booking app',
        style: new TextStyle(color: Colors.white, fontSize: 20.0),
        textAlign: TextAlign.center,
      ),
    );

    final email = new TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'alucard@gmail.com',

      decoration: new InputDecoration(
        hintText: 'Email',
        border: InputBorder.none,
//        border: new UnderlineInputBorder(borderSide: new BorderSide(color: Colors.red, style: BorderStyle.none)),
        contentPadding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
//        border: new OutlineInputBorder(borderRadius: new BorderRadius.only(topLeft: Radius.circular(4.0), topRight:  Radius.circular(4.0))),
      ),
    );

    final password = new TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: new InputDecoration(
        hintText: 'Password',
        border: InputBorder.none,
        contentPadding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
//        border: new OutlineInputBorder(borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(4.0), bottomRight:  Radius.circular(4.0))),
      ),
    );

    final loginButton = new Padding(
      padding: new EdgeInsets.symmetric(vertical: 16.0),
      child: new Material(
        borderRadius: new BorderRadius.circular(3.0),
        shadowColor: Colors.black,
        elevation: 5.0,
        child: new MaterialButton(
          minWidth: 200.0,
          height: 60.0,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/home');
          },
          color: Colors.white,
          child: new Text('LOG IN' , style: new TextStyle(color: Color(0xFF229d5f), fontSize: 18.0, fontWeight: FontWeight.bold)),
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
      backgroundColor: Color(0xFF229D5F),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/BG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Center(
          child: new ListView(
            shrinkWrap: true,
            padding: new EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              new SizedBox(height: 16.0),
              welcomeText,
              new SizedBox(height: 16.0),
              welcomeText2,
              new SizedBox(height: 48.0),
              new Container(
                child: new ListView (
                  shrinkWrap: true,
                  padding: new EdgeInsets.only(left: 0.0, right: 0.0),
                  children: <Widget>[
                    email,
                    new Divider(color: Color(0xFFe3e9ec), height: 1.0),
                    password
                  ]
                ),
                decoration: new BoxDecoration (
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(new Radius.circular(3.0)),
                    boxShadow: [
                      const BoxShadow(offset: const Offset(0.0, 3.0), blurRadius: 1.0, spreadRadius: -2.0, color:  const Color(0x33000000)),
                      const BoxShadow(offset: const Offset(0.0, 3.0), blurRadius: 4.0, spreadRadius: 0.0, color: const Color(0x24000000)),
                      const BoxShadow(offset: const Offset(0.0, 1.0), blurRadius: 8.0, spreadRadius: 0.0, color: const Color(0x1F000000)),
                    ]
                ),
              ),
              new SizedBox(height: 24.0),
              loginButton,
//              forgotLabel,
  //            new FlatButton(
  //              child: new Text(
  //                'FAQ',
  //                style: new TextStyle(color: Colors.black54),
  //              ),
  //              onPressed: () {
  //                Navigator.of(context).pushNamed('/faq');
  //              },
  //            ),
  //            new FlatButton(
  //              child: new Text(
  //                'Contact Us',
  //                style: new TextStyle(color: Colors.black54),
  //              ),
  //              onPressed: () {
  //                Navigator.of(context).pushNamed('/contactus');
  //              },
  //            ),

            ],
          ),
        )
      ),
    );
  }
}