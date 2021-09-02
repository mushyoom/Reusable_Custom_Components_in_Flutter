import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool _checkValue = false;
  int _selectValue = 1;

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
          children: [
            SizedBox(height: 20),
            _checkBox(),
            SizedBox(height: 20),
            _dropDown(),
          ],
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

  //ドロップダウンボタン
  Widget _dropDown() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFF2F2F2),
                spreadRadius: 5,
                blurRadius: 1,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ]),
        child: InputDecorator(
          decoration: const InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          child: DropdownButtonHideUnderline(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: DropdownButton(
                  value: _selectValue,
                  elevation: 2,
                  itemHeight: 50,
                  icon: Icon(Icons.arrow_circle_down),
                  isDense: true,
                  onChanged: (int? value) {
                    print(value);
                    setState(() {
                      _selectValue = value!;
                    });
                  },
                  items: [
                    DropdownMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          'A',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        'B',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        'C',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      value: 3,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
