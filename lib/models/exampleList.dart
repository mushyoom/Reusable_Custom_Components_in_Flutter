import 'package:awesome_flutter_coding/expand_panel_list.dart';
import 'package:awesome_flutter_coding/hero_image_page.dart';
import 'package:awesome_flutter_coding/methods/countdown.dart';
import 'package:awesome_flutter_coding/screen/click_backdropFilter_page.dart';
import 'package:awesome_flutter_coding/screen/photoView_page.dart';
import 'package:awesome_flutter_coding/screen/post_page.dart';
import 'package:awesome_flutter_coding/screen/reactionSelectionButton.dart';
import 'package:awesome_flutter_coding/screen/reaction_button_page.dart';
import 'package:awesome_flutter_coding/tabbar_inside_body.dart';
import 'package:awesome_flutter_coding/toastMessageBox.dart';
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
    exampleTitle: 'TabbarInsideSilverAppbar',
    exampleDescription:
        'Set the SilverAppbar in body of Scaffold, the tabbar tabbarview is inside it. TabBarView is set inside the widget SliverFillRemaining',
    exampleImage: 'assets/images/TabbarWithScrollView.png',
    examplePage: TabbarWithScrollView(),
  ),
  ExampleList(
    exampleTitle: 'Use grid and hero show images',
    exampleDescription:
        'show a groud of images that you do not know how many there are and show the details with hero',
    exampleImage: 'assets/images/HeroImagePage.png',
    examplePage: HeroImagePage(),
  ),
  ExampleList(
    exampleTitle: 'Expandable panel list',
    exampleDescription:
        'show a groud of images that you do not know how many there are and show the details with hero',
    exampleImage: 'assets/images/HeroImagePage.png',
    examplePage: ExpandablePanelList(),
  ),
  ExampleList(
    exampleTitle: 'CountDown',
    exampleDescription:
        'show a groud of images that you do not know how many there are and show the details with hero',
    exampleImage: 'assets/images/HeroImagePage.png',
    examplePage: CountDownPage(),
  ),
  ExampleList(
    exampleTitle: 'ShowToastMessage',
    exampleDescription:
        'show a message and two button widgets inside a Toast widget.',
    exampleImage: 'assets/images/ToastMessage.png',
    examplePage: ShowToastPage(),
  ),
  ExampleList(
    exampleTitle: 'ShowPhotoinDialog',
    exampleDescription:
        'show severals photos inside a dailog that can be scrolled.',
    exampleImage: 'assets/images/ShowPhotoView.png',
    examplePage: PhotoViewPage(),
  ),
  ExampleList(
    exampleTitle: 'ReactionButtonPage',
    exampleDescription:
        'show severals photos inside a dailog that can be scrolled.',
    exampleImage: 'assets/images/Facebook reaction.png',
    examplePage: ReactionButtonPage(),
  ),
  ExampleList(
    exampleTitle: 'ReactionSelectPage',
    exampleDescription:
        'show severals photos inside a dailog that can be scrolled.',
    exampleImage: 'assets/images/Facebook reaction.png',
    examplePage: ReactionSelctionPage(),
  ),
  ExampleList(
    exampleTitle: 'BackdropFilter',
    exampleDescription: 'show filter to cover a widget',
    exampleImage: 'assets/images/BackdropFilterPage.png',
    examplePage: BackdropFilterPage(),
  ),
  ExampleList(
    exampleTitle: 'PostTextField',
    exampleDescription: 'show PostTextField to post tweeteds and image',
    exampleImage: 'assets/images/BackdropFilterPage.png',
    examplePage: PostPage(),
  ),
];
