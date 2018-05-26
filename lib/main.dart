import 'package:flutter/material.dart';
import './pages/login/login_page.dart';
import './faq.dart';
import './pages/home.dart';
import './contactus.dart';

void main() => runApp(new MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/faq': (BuildContext context) => new FaqPage(),
  '/home': (BuildContext context) => new HomePage(),
  '/contactus': (BuildContext context) => new ContactUsPage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        hintColor: Color(0xFF9B9B9B),
        primaryColor: Color(0xFF229D5F),
        accentColor: Colors.red,
        fontFamily: 'proxima'
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      onGenerateRoute: (setting) {
        print(setting.toString());
      },
    );
  }
}