import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class ShowToastPage extends StatefulWidget {
  const ShowToastPage({Key? key}) : super(key: key);

  @override
  _ShowToastPageState createState() => _ShowToastPageState();
}

class _ShowToastPageState extends State<ShowToastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
          child: Text('click floatingActionButton to show ToastMessage')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showToast();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  showToast() {
    return showToastWidget(
      Container(
        width: 380,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 12,
              offset: Offset(1, 3),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                ToastManager().dismissAll(showAnim: true);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) {
                //   return MyHomePage(
                //     title: 'hello',
                //   );
                // }));
              },
              icon: Icon(
                Icons.close,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'This is a toast of message',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 18,
              ),
            ),
            TextButton(
                onPressed: () {
                  print('text');
                },
                style: TextButton.styleFrom(
                  fixedSize: Size(50, 34),
                  elevation: 1,
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  'Edit',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
      context: context,
      isIgnoring: false,
      duration: Duration(seconds: 10),
      position: StyledToastPosition.top,
      animation: StyledToastAnimation.slideFromTop,
      curve: Curves.easeOut,
      reverseAnimation: StyledToastAnimation.fade,
    );
  }
}
