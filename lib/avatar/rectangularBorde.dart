import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

class RectanguloBordeAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rectangulo con bordes'),
        ),
        body: Center(
          child: Container(
            child: AvatarView(
              radius: 60,
              borderWidth: 8,
              borderColor: Colors.grey,
              avatarType: AvatarType.RECTANGLE,
              backgroundColor: Colors.red,
              imagePath:
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pizabay-220453.jpg",
              placeHolder: Container(
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              errorWidget: Container(
                child: Icon(
                  Icons.error,
                  size: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
