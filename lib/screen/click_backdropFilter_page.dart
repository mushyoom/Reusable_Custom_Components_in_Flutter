import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterPage extends StatefulWidget {
  const BackdropFilterPage({Key? key}) : super(key: key);

  @override
  _BackdropFilterPageState createState() => _BackdropFilterPageState();
}

class _BackdropFilterPageState extends State<BackdropFilterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _layout(),
      ),
    );
  }

  _layout() {
    return Column(
      children: [
        SizedBox(height: 10),
        Text('文字数が多い場合：BackdropFilter使用'),
        SizedBox(height: 10),
        _coverBigBox(),
        SizedBox(height: 30),
        Text('文字数が少ない場合：BackdropFilter使用'),
        SizedBox(height: 10),
        _coversmallBox(),
        SizedBox(height: 30),
        Text('写真のぼかし：ImageFilteredを使った方が便利：'),
        SizedBox(height: 10),
        _imageCover(),
      ],
    );
  }

  //ボックス:文字数が多い場合（BackdropFilter使用）
  Widget _coverBigBox() {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: Text(
              'ササンプルコードの例として、BackdropFilterをStackの中で使ってみましょう。サンプルコードの例として、BackdropFilterをStackの中で使ってみましょう。サンプルコードの例として、BackdropFilterをStackの中で使ってみましょう。サンプルコードの例として、BackdropFilterをStackの中で使ってみましょう。サンプルコードの例として、BackdropFilterをStackの中で使ってみましょう。サンプルコードの例として、BackdropFilterをStackの中で使ってみましょう。'),
        ),
        Positioned.fill(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(
                color: Colors.black.withOpacity(0),
                child: Icon(
                  Icons.lock_outline,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

//ボックス:文字数が少ない例（BackdropFilter使用、高さは内容に合わせる）
  Widget _coversmallBox() {
    return Stack(
      children: <Widget>[
        Container(
          width: 300,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(
              'ササンプルコードの例として,ササンプルコードの例として,ササンプルコードの例として,ササンプルコードの例として組み合わせてブラーがかかる領域を指定することができます。組み合わせてブラーがかかる領域を指定することができます。組み合わせてブラーがかかる領域を指定することができます。'),
        ),
        Positioned.fill(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(
                color: Colors.black.withOpacity(0),
                child: Icon(
                  Icons.lock_outline,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

//写真のぼかし：ImageFilteredを使った方が便利
  Widget _imageCover() {
    return Stack(
      children: [
        Stack(
          children: <Widget>[
            ClipRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Stack(
                  children: [
                    Image.network(
                        'https://cdn.getyourguide.com/img/country/58de136b73284.jpeg/88.jpg'),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              child: Icon(
                Icons.lock_outline,
                color: Colors.white,
                size: 80,
              ),
            )
          ],
        ),
      ],
    );
  }
}
