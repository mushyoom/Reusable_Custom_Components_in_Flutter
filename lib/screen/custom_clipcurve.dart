import 'package:flutter/material.dart';

class CustomClipCurve extends StatefulWidget {
  const CustomClipCurve({Key? key}) : super(key: key);

  @override
  _CustomClipCurveState createState() => _CustomClipCurveState();
}

class _CustomClipCurveState extends State<CustomClipCurve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _app3(),
      drawer: _drawerMenu(),
      // body: ,
    );
  }

  //app3:back button
  PreferredSizeWidget _app3() {
    return PreferredSize(
      preferredSize: Size.fromHeight(130.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        // automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: CustomShape(),
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFFB100), Color(0xFFFFB100)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Center(
                  child: Text(
                    "O T E N T O",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //drawer
  Widget _drawerMenu() {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFFB100), Color(0xFFFFB100)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
            child: Text(
              "O T E N T O",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
          ListTile(
            title: const Text('設定'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('アプリについて'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('お問い合わせ'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('ログアウト'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, 210, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
