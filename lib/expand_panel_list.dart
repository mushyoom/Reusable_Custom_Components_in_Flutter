import 'package:flutter/material.dart';

// https://medium.com/flutter-community/flutter-expansion-collapse-view-fde9c51ac438

class ExpandablePanelList extends StatefulWidget {
  const ExpandablePanelList({Key? key}) : super(key: key);

  @override
  _ExpandablePanelListState createState() => _ExpandablePanelListState();
}

class _ExpandablePanelListState extends State<ExpandablePanelList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {},
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text('ExpansionPanl'),
                    );
                  },
                  body: ListTile(
                    title: Text('Item 2 child'),
                    subtitle: Text(
                        'Details goes here.This article is going to be more practical than theoretica'),
                  ),
                  isExpanded: true,
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'ExpansionTile1',
                style: TextStyle(color: Colors.redAccent),
              ),
              iconColor: Colors.green,
              collapsedIconColor: Colors.deepOrange,
              children: [
                Text(
                    'This article is going to be more practical than theoretical, I just wanted to show in a simple way, various methods to share data. This won’t cover more complex ways like scoped BLoC pattern (talked about in previous articles) or other (like ScopedModel or Redux, that I’ve never used')
              ],
            ),
            ExpansionTile(
              title: Text(
                'ExpansionTile2',
                style: TextStyle(color: Colors.redAccent),
              ),
              iconColor: Colors.green,
              collapsedIconColor: Colors.deepOrange,
              children: [
                Text(
                    'This article is going to be more practical than theoretical, I just wanted to show in a simple way, various methods to share data. This won’t cover more complex ways like scoped BLoC pattern (talked about in previous articles) or other (like ScopedModel or Redux, that I’ve never used')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
