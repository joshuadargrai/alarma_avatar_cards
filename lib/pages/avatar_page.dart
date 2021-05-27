import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('AvatarPage'),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: (ListView(
            children: [
              Container(
                child: ListTile(
                  title: Text('Avatar Circular'),
                  leading: Icon(Icons.account_circle),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('avatar/circular');
                  },
                ),
              ),
              Container(
                child: ListTile(
                  title: Text('Avatar circular con borde'),
                  leading: Icon(Icons.account_circle),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('avatar/circularBorde');
                  },
                ),
              ),
              Container(
                child: ListTile(
                  title: Text('Avatar rectangulo'),
                  leading: Icon(Icons.account_circle),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('avatar/rectangulo');
                  },
                ),
              ),
              Container(
                child: ListTile(
                  title: Text('Avatar rectangular con borde'),
                  leading: Icon(Icons.account_circle),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('avatar/rectanguloBorde');
                  },
                ),
              ),
            ],
          ))),
    );
  }
}
