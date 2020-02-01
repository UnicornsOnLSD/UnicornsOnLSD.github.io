import 'package:flutter/material.dart';
import 'package:website/github_icon_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "James Harvey",
                style: TextStyle(fontSize: 72),
              ),
              ButtonBar(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RaisedButton.icon(
                    icon: Icon(GithubIcon.github),
                    label: Text("Github"),
                    onPressed: () =>
                        launch("https://www.github.com/UnicornsOnLSD"),
                  ),
                  RaisedButton.icon(
                    icon: Icon(Icons.email),
                    label: Text("Email"),
                    onPressed: () => launch("mailto:jmsharvey771@gmail.com"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
