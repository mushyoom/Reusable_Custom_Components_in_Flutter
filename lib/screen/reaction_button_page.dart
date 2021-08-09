import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

class ReactionButtonPage extends StatefulWidget {
  const ReactionButtonPage({Key? key}) : super(key: key);

  @override
  _ReactionButtonPageState createState() => _ReactionButtonPageState();
}

IconData _iconContent = Icons.icecream;

List _reactionList = [
  Icons.face_outlined,
  Icons.dangerous_sharp,
  Icons.mail_outline,
  Icons.nature_outlined,
  Icons.table_chart_outlined
];

class _ReactionButtonPageState extends State<ReactionButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook reaction button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _box(_iconContent),
            FlutterReactionButton(
              splashColor: Colors.blue,
              boxPosition: Position.BOTTOM,
              boxItemsSpacing: 20,
              boxPadding: EdgeInsets.all(8),

              onReactionChanged: (reaction, index) {
                print('reaction selected index: $index');
                // print(reaction.runtimeType);
                setState(() {
                  _iconContent = _reactionList[index];
                });
              },
              reactions: <Reaction>[
                Reaction(
                  previewIcon: Icon(
                    Icons.face_outlined,
                    size: 40,
                  ),
                  icon: Icon(Icons.face_outlined),
                ),
                Reaction(
                  previewIcon: Icon(
                    Icons.dangerous_sharp,
                    size: 40,
                  ),
                  icon: Icon(Icons.dangerous_sharp),
                ),
                Reaction(
                  previewIcon: Icon(
                    Icons.mail_outline,
                    size: 40,
                  ),
                  icon: Icon(Icons.mail_outline_outlined),
                ),
                Reaction(
                  previewIcon: Icon(
                    Icons.nature_outlined,
                    size: 40,
                  ),
                  icon: Icon(Icons.nature_outlined),
                ),
                Reaction(
                  previewIcon: Icon(
                    Icons.table_chart_outlined,
                    size: 40,
                  ),
                  icon: Icon(Icons.table_chart_outlined),
                ),
              ],
              initialReaction: Reaction(
                  icon: Icon(
                Icons.add_a_photo,
                size: 40,
              )),
              shouldChangeReaction: false,
              // selectedReaction: Reaction(icon: Icon(Icons.add_a_photo)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _box(IconData _content) {
    return Container(
      height: 150,
      width: 150,
      color: Colors.blue,
      child: Icon(
        _content,
        size: 100,
      ),
    );
  }
}
