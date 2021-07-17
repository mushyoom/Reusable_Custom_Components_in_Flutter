import 'package:awesome_flutter_coding/tabbar_inside_body.dart';
import 'package:flutter/material.dart';

import '../simlpe_scrollablebody_listview.dart';

class ExampleList {
  String exampleTitle;
  String exampleDescription;
  String exampleImage;
  StatefulWidget examplePage;

  ExampleList({
    required this.exampleTitle,
    required this.exampleDescription,
    required this.exampleImage,
    required this.examplePage,
  });
}

List exampleList = [
  ExampleList(
    exampleTitle: 'Scrollablebody with fixed topBar',
    exampleDescription:
        'having a fixed topbar below the appBar,and a endless list widget inside the body',
    exampleImage: 'assets/images/ScrollBodyFixedTopBar.png',
    examplePage: ScrollBodyFixedTopBar(),
  ),
  ExampleList(
    exampleTitle: 'A simple Scrollablebody with fixed topBar',
    exampleDescription:
        'having a fixed topbar below the appBar,and a endless list widget inside the body',
    exampleImage: 'assets/images/ScrollBodyFixedTopBar.png',
    examplePage: TabbarWithScrollView(),
  ),
  ExampleList(
    exampleTitle: 'A simple Scrollablebody with fixed topBar',
    exampleDescription:
        'having a fixed topbar below the appBar,and a endless list widget inside the body',
    exampleImage: 'assets/images/ScrollBodyFixedTopBar.png',
    examplePage: ScrollBodyFixedTopBar(),
  ),
];
