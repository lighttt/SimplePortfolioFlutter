import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75.0,
                backgroundImage: AssetImage("images/profile.jpg"),
              ),
              Text(
                "Manish Tuladhar",
                style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mark',
                    color: Colors.white),
              ),
              Text(
                "A P P   D E V E L O P E R",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.teal.shade100,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _launchURL;
                },
                child: Card(
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 24,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+977-981234567",
                      style: TextStyle(
                          fontSize: 20.0, color: Colors.teal.shade500),
                    ),
                  ),
                ),
              ),
              Card(
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "manish.tuladhar@gmail.com",
                      style: TextStyle(
                          fontSize: 20.0, color: Colors.teal.shade500),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'mailto:manish.eclipse@gmail.com?subject=<subject>&body=<body>';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
