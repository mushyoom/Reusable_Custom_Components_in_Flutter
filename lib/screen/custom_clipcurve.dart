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

  //app1
  PreferredSizeWidget _app1() {
    return AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.transparent,
      elevation: 1,
      toolbarHeight: 70,
      title: Text("Custom App Bar"),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
                colors: [Colors.red, Colors.pink],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
      ),
    );
  }

  //app2:backbutton
  PreferredSizeWidget _app2() {
    return PreferredSize(
      preferredSize: Size.fromHeight(130.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: CustomShape(),
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFFB100), Color(0xFFFFB100)],
                  begin: Alignment(-1, -1),
                  end: Alignment(-1, -1)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                _backBtn(),
                SizedBox(height: 20),
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

  //app3:backbutton
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

  //back button
  Widget _backBtn() {
    return Transform.translate(
      offset: Offset(25, 10),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          width: 36,
          height: 36,
          padding: const EdgeInsets.all(9.82),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(13)),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 16,
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
