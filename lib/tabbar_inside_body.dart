import 'package:flutter/material.dart';

class TabbarWithScrollView extends StatefulWidget {
  const TabbarWithScrollView({Key? key}) : super(key: key);

  @override
  _TabbarWithScrollViewState createState() => _TabbarWithScrollViewState();
}

class _TabbarWithScrollViewState extends State<TabbarWithScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar innside ScrollView'),
      ),
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blueGrey,
              automaticallyImplyLeading: false, //Remove Back Button on AppBar
              floating: false,
              pinned:
                  true, //make the title always shown on the top of screen even though user scroll the body
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                  title: TabBar(
                indicatorColor: Colors.yellowAccent,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text(
                      'Tabbar1',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Tab(
                      child: Text('Tabbar2',
                          style: TextStyle(
                            fontSize: 14.0,
                          ))),
                ],
              )),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  listInTabbarView1(),
                  listInTabbarView2(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listInTabbarView1() {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[50],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[100],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[200],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[300],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[400],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[500],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[600],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[700],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.deepPurple[800],
          )
        ],
      ),
    );
  }

  Widget listInTabbarView2() {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[50],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[100],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[200],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[300],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[400],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[500],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[600],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[700],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[800],
          )
        ],
      ),
    );
  }
}
