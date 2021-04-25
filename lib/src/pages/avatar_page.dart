import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://www.piodeportes.com/wp-content/uploads/2021/03/rrhrsn8kest7s0muxbom.jpg',
              ),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('Al'),
              backgroundColor: Colors.deepPurple,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 200),
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://cdn.maximoavance.com/2020/11/duelo-ante-Steelers-sigue-en-pie.jpg'),
        ),
      ),
    );
  }
}
