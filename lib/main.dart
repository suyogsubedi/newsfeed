import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Feed',
      home: Scaffold(
        appBar: AppBar(
          title: Text('News Feed'),
        ),
        body: ListView(
          children: [
            Card(
              child: Column(
                children: [basicInfo, caption, photo, actions],
              ),
            )

            // Arko suru hunxa
          ],
        ),
      ),
    );
  }
}

Widget basicInfo = Row(
  children: [
    SizedBox(width: 10),
    // Profile Pic row
    Row(
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(0, 15, 2, 0),
            width: 60,
            height: 60,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
            ))
      ],
    ),
    // UserName Row
    // SizedBox(width: 10),
    Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Text(
            'Suyog Subedi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            child: Text('Date'),
          )
        ],
      ),
    ),
    // Activity of the user
    SizedBox(width: 10),
    Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Row(
        children: [Text('updated their profile picture')],
      ),
    ),
  ],
);

// Date Row

Widget caption = Column(
  children: [
    Text(
      'What a day it has been simply wow.',
      textAlign: TextAlign.center,
    )
  ],
);

Widget photo = Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Container(
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjRWKMMyyKXPS4RhcVVPyHNID5WCkCeo5y6w&usqp=CAU'))
  ],
);

//
Widget actions = Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const <Widget>[
    Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.blue,
      size: 36.0,
    ),
  ],
);
