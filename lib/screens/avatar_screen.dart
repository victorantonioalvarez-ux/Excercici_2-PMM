import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pàgina avatar"),
        actions: [
          Container(
            margin: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://static.wikia.nocookie.net/minion/images/c/ca/Bob-from-the-minions-movie.jpg/revision/latest/scale-to-width-down/600?cb=20160316002021&path-prefix=es"),
              radius: 30.0
            ), 
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(placeholder: AssetImage('assets/jar-loading.gif'), 
        image: NetworkImage('https://static.wikia.nocookie.net/minion/images/c/ca/Bob-from-the-minions-movie.jpg/revision/latest/scale-to-width-down/600?cb=20160316002021&path-prefix=es')),
      )
    );
  }
}
