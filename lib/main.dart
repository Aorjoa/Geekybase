import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasicAppBarSample extends StatefulWidget {
  @override
  _BasicAppBarSampleState createState() => _BasicAppBarSampleState();
}

class _BasicAppBarSampleState extends State<BasicAppBarSample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/geekybase_logo.svg',
                    height: 55.0,
                    width: 55.0,
                    color: Colors.white,
                  ),
                  new Text(
                    "|",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                  Column(children: <Widget>[
                    new Text("GeekyBase"),
                    new Text(
                      "Living fun.",
                      style: new TextStyle(fontSize: 15.00),
                    )
                  ])
                ],
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                'assets/folded-newspaper.svg',
                height: 25.0,
                width: 25.0,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.import_contacts),
              onPressed: () {},
            ),            
            IconButton(
              icon: Icon(Icons.event),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}


class NewsBoard extends StatelessWidget {
  const NewsBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(BasicAppBarSample());
}
