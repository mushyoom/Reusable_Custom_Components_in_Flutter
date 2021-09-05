import 'package:flutter/material.dart';

class EndlessListLoadingPage extends StatefulWidget {
  const EndlessListLoadingPage({Key? key}) : super(key: key);

  @override
  _EndlessListLoadingPageState createState() => _EndlessListLoadingPageState();
}

class _EndlessListLoadingPageState extends State<EndlessListLoadingPage> {
  var _list = [];
  final ScrollController _controller = ScrollController();
  bool _isLoading = false;
  int _callDataTimes = 1;

  _loadingList() {
    if (_callDataTimes > 4) {
      return;
    } else {
      _list = List<int>.generate(100 * _callDataTimes, (i) => i + 1);
      _callDataTimes++;
      print(_list);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    _loadingList();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _onScroll() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        _isLoading = true;
      });
      _loadingList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('loading endless list'),
        ),
        body: _layout());
  }

  Widget _layout() {
    return ListView.builder(
        controller: _controller,
        itemCount: _isLoading ? _list.length + 1 : _list.length,
        itemBuilder: (BuildContext context, int _index) {
          if (_index == 400) {
            return Center(
              child: Container(
                height: 40,
                child: Text(
                  'There is no data.',
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            );
          } else if (_index == _list.length) {
            return Center(
              child: CircularProgressIndicator(color: Colors.blueAccent),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 40,
                child: Text(
                  'Item$_index',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                ),
              ),
            );
          }
        });
  }
}
