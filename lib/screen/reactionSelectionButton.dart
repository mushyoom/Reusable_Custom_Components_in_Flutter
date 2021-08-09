import 'package:flutter/material.dart';

class ReactionSelctionPage extends StatefulWidget {
  const ReactionSelctionPage({Key? key}) : super(key: key);

  @override
  _ReactionSelctionPageState createState() => _ReactionSelctionPageState();
}

class _ReactionSelctionPageState extends State<ReactionSelctionPage> {
  showaDialog() {
    showDialog(
        barrierColor: Color(0x01000000),
        context: context,
        builder: (BuildContext context) {
          return Align(
            alignment: Alignment(0, 1),
            child: AnimatedContainer(
              duration: Duration(seconds: 1200),
              transform: Matrix4.translationValues(0, -30, 0),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Icon(Icons.umbrella),
                  ),
                  Icon(Icons.yard),
                  Icon(Icons.undo_sharp),
                  Icon(Icons.tab_sharp),
                  Icon(Icons.sailing),
                ],
              ),
            ),
          );
        });
  }

  showreaction() {
    return showGeneralDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      barrierDismissible: false,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: Duration(milliseconds: 80),
      pageBuilder: (context, anim1, anim2) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: 70,
          child: StatefulBuilder(
            builder: (context, snapshot) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.umbrella),
                        Icon(Icons.yard),
                        Icon(Icons.undo_sharp),
                        Icon(Icons.tab_sharp),
                        Icon(Icons.sailing),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReactionButton'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('object');
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                showreaction();
              },
              child: Text('Reaction'),
            ),
            MyWidget(),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel:
                MaterialLocalizations.of(context).modalBarrierDismissLabel,
            barrierColor: Colors.black.withOpacity(0.1),
            transitionBuilder: (context, anim1, anim2, child) {
              return SlideTransition(
                position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                    .animate(anim1),
                child: child,
              );
            },
            pageBuilder: (context, anim1, anim2) {
              return StatefulBuilder(
                builder: (context, snapshot) {
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.umbrella),
                            Icon(Icons.yard),
                            Icon(Icons.undo_sharp),
                            Icon(Icons.tab_sharp),
                            Icon(Icons.sailing),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
        child: const Text("Show Dialog"));
  }
}
