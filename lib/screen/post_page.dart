import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool _checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layout(),
    );
  }

  _layout() {
    return Center(
      child: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(height: 20), _checkBox()],
        ),
      ),
    );
  }

//チェックボックス
  _checkBox() {
    return GestureDetector(
        onTap: () {
          setState(() {
            _checkValue = !_checkValue;
          });
        },
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.8), width: 1),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Icon(
              _checkValue ? Icons.check : null,
              color: Colors.pink,
              size: 16,
            ),
          ),
        ));
  }
}
