import 'package:flutter/material.dart';

import 'models/exampleList.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: exampleList.length,
          itemExtent: 120,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4,
              color: Colors.blue[50],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: Image.asset(
                      exampleList[index].exampleImage,
                      fit: BoxFit.fitWidth,
                    ),
                    title: Transform.translate(
                        offset: Offset(0, -5),
                        child: Text(
                          exampleList[index].exampleTitle,
                          style: TextStyle(fontSize: 18),
                        )),
                    subtitle: Text((exampleList[index].exampleDescription)),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return exampleList[index].examplePage;
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          }),
    );
  }
}
