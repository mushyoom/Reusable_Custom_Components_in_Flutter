import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPage extends StatefulWidget {
  const ShimmerPage({Key? key}) : super(key: key);

  @override
  _ShimmerPageState createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shimmer'),
      ),
      body: Column(
        children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ShimmerPage1();
                  },
                ));
              },
              child: Text('Twitter List Shimmer')),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ShimmerPage2();
                  },
                ));
              },
              child: Text('Twitter Details Shimmer')),
        ],
      ),
    );
  }
}

class ShimmerPage1 extends StatefulWidget {
  const ShimmerPage1({Key? key}) : super(key: key);

  @override
  _ShimmerPage1State createState() => _ShimmerPage1State();
}

class _ShimmerPage1State extends State<ShimmerPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer1'),
      ),
      body: _twitterLoadingShimmer(),
    );
  }

  Widget _twitterLoadingShimmer() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Shimmer.fromColors(
              baseColor: Colors.grey.withOpacity(0.2),
              highlightColor: Colors.grey.withOpacity(0.0),
              enabled: true,
              // direction: ShimmerDirection.ttb,
              child: ListView.builder(
                itemBuilder: (_, __) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: _twitterContentLayout(),
                ),
                itemCount: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _twitterContentLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipOval(
          child: Container(
            height: 50,
            width: 50,
            color: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
        ),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60.0,
                    height: 8.0,
                    color: Colors.white,
                  ),
                  Container(
                    width: 160.0,
                    height: 8.0,
                    color: Colors.white,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
              ),
              Container(
                width: double.infinity,
                height: 8.0,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
              ),
              Container(
                width: double.infinity,
                height: 8.0,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
              ),
              Container(
                width: double.infinity,
                height: 8.0,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              Container(
                width: double.infinity,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 25),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ShimmerPage2 extends StatefulWidget {
  const ShimmerPage2({Key? key}) : super(key: key);

  @override
  _ShimmerPage2State createState() => _ShimmerPage2State();
}

class _ShimmerPage2State extends State<ShimmerPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer2'),
      ),
      body: _twitterDetailsLayout(),
    );
  }

  Widget _twitterDetailsLayout() {
    return SingleChildScrollView(
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.2),
        highlightColor: Colors.grey.withOpacity(0.1),
        enabled: true,
        // direction: ShimmerDirection.ttb,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80.0,
                        height: 8.0,
                        color: Colors.white,
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 12)),
                      Container(
                        width: 150.0,
                        height: 8.0,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 10.0,
                color: Colors.white,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 8)),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 10.0,
                color: Colors.white,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 8)),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 10.0,
                color: Colors.white,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 220.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 25)),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180.0,
                        height: 8.0,
                        color: Colors.white,
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 12)),
                      Container(
                        width: 180.0,
                        height: 8.0,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 12)),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180.0,
                        height: 8.0,
                        color: Colors.white,
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 12)),
                      Container(
                        width: 180.0,
                        height: 8.0,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
              Divider(height: 3),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              _commentWidget(),
              _commentWidget(),
              _commentWidget(),
              _commentWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _commentWidget() {
    return Row(
      children: [
        ClipOval(
          child: Container(
            height: 50,
            width: 50,
            color: Colors.white,
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 20)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80.0,
                height: 8.0,
                color: Colors.white,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 12)),
              Container(
                width: double.infinity,
                height: 8.0,
                color: Colors.white,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 8)),
              Container(
                width: double.infinity,
                height: 8.0,
                color: Colors.white,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
            ],
          ),
        )
      ],
    );
  }
}
