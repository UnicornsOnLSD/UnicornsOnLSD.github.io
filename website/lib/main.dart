import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                "James Harvey",
                style: TextStyle(fontSize: 72),
              ),
              RaisedButton.icon(
                icon: SvgPicture.asset("assets/github.svg"),
                label: Text("Github"),
                onPressed: () => launch("https://www.github.com/UnicornsOnLSD"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
