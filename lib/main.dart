import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  _launchURL() async {
    const url = 'https://medium.com/@mischahaenen';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                radius: 60.0,
                backgroundImage: AssetImage('lib/assets/images/Mischa2_2.jpg'),
                backgroundColor: Colors.red,
              ),
              Text(
                'Mischa Haenen',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'WEB APPLICATION ENGINEER',
                style: TextStyle(
                    color: Colors.teal[100],
                    fontFamily: 'SourceSansPro-Regular',
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              GestureDetector(
                onTap: _launchURL,
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                  child: ListTile(
                    leading: Icon(
                      Icons.link,
                      color: Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      'medium.com/@mischahaenen',
                      style: TextStyle(color: Colors.teal, fontFamily: 'SourceSansPro-Regular'),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 30,
                  ),
                  title: Text(
                    'mischa.j.haenen@gmail.com',
                    style: TextStyle(color: Colors.teal, fontFamily: 'SourceSansPro-Regular'),
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
