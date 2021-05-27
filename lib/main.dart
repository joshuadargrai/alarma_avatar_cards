import 'package:flutter/material.dart';
import 'package:flutter_application_wi/pages/alert_page.dart';
import 'package:flutter_application_wi/pages/avatar_page.dart';
import 'package:flutter_application_wi/avatar/circuleAvatar.dart';
import 'package:flutter_application_wi/avatar/circuleConBorder.dart';
import 'package:flutter_application_wi/avatar/Rectangular.dart';
import 'package:flutter_application_wi/avatar/rectangularBorde.dart';
import 'package:flutter_application_wi/pages/card_page.dart';
import 'package:flutter_application_wi/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: HomePageTemp(),
      routes: {
        '/': (BuildContext context) => HomePageTemp(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'avatar/circular': (BuildContext context) => CircularAvatar(),
        'avatar/circularBorde': (BuildContext context) => CircularBordeAvatar(),
        'avatar/rectangulo': (BuildContext context) => RectanguloAvatar(),
        'avatar/rectanguloBorde': (BuildContext context) =>
            RectanguloBordeAvatar(),
        'card': (BuildContext context) => CardPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
