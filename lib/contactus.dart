import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final welcome = new Padding(
      padding: new EdgeInsets.all(8.0),
      child: new Text(
        'Question 1',
        style: new TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = new Padding(
      padding: new EdgeInsets.all(8.0),
      child: new Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
        style: new TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = new Container(
      width: MediaQuery.of(context).size.width,
      padding: new EdgeInsets.all(28.0),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: new Column(
        children: <Widget>[lorem],
      ),
//      child: new Center(
//        child: lorem,
//      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Contact Us'),
      ),
      body: body,
    );
  }
}