import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/app-logo.png"),
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/user-picture.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              onPressed: () => {},
              child: FlatButton(
                child: Icon(
                  Icons.search,
                  color: Color(
                    0xFFBABABA,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(
          0xFFF2F3F6,
        ),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
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
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://baltaio.blob.core.windows.net/student-images/1edd5c50-bae9-11e8-8eb4-39de303632c1.jpg",
            ),
          ),
          title: Text(
            "Bruce Wayne",
          ),
          subtitle: Text(
            "09/05/2019 18h37",
          ),
          trailing: Icon(
            Icons.more_vert,
          ),
        ),
        Container(
          child: Image.asset(
            "assets/post-picture-001.png",
          ),
        ),
        Wrap(
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                        left:
                            BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                        right:
                            BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFFF000000)),
                      ),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.tealAccent,
                    ),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Teste",
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
