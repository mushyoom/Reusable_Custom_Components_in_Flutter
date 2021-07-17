import 'package:flutter/material.dart';

class ScrollBodyFixedTopBar extends StatefulWidget {
  // const ScrollBodyFixedAppBar({Key? key}) : super(key: key);

  @override
  _ScrollBodyFixedTopBarState createState() => _ScrollBodyFixedTopBarState();
}

class _ScrollBodyFixedTopBarState extends State<ScrollBodyFixedTopBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
      ),
      body: Container(
        constraints: BoxConstraints(maxHeight: double.infinity),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Center(
                    child: Text(
                      'Fixd Part here',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  color: Colors.redAccent[100],
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.greenAccent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[50],
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[100],
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[200],
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[300],
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[400],
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[500],
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[600],
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[700],
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue[800],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
