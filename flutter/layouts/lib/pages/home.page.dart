import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/user-picture.png'),
              fit: BoxFit.fitHeight
            )
          ),
        ),
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset('assets/app-logo.png')
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem()
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://avatars0.githubusercontent.com/u/1117948?s=400&u=2e91516bcd87c13988b02bcac440e29a975e22f0&v=4'),
          ),
          title: Text('Burce Wayne'),
          subtitle: Text('09/05/2019 18:37'),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset('assets/post-picture-001.png'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur nisl eu mollis vulputate. Sed at luctus mi. Vestibulum ac congue velit. Mauris ornare interdum dui.'),
        ),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Icon(Icons.favorite),
              onPressed: () => {},
            ),
            FlatButton(
              child: Icon(Icons.share),
              onPressed: () => {},
            )
          ],
        ),
      ],
    ),
  );
}