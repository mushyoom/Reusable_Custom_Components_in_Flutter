import 'package:flutter/material.dart';

List _imageList = [
  {
    'image': 'assets/images/hero_image_page/image-1@3x.png',
    'title': 'Rechipe1',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-2@3x.png',
    'title': 'Rechipe2',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-3@3x.png',
    'title': 'Rechipe3',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-4@3x.png',
    'title': 'Rechipe4',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-5@3x.png',
    'title': 'Rechipe5',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-6@3x.png',
    'title': 'Rechipe6',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-7@3x.png',
    'title': 'Rechipe7',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-8@3x.png',
    'title': 'Rechipe8',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-9@3x.png',
    'title': 'Rechipe9',
    'recipeDescription': 'It is so delicious !'
  },
  {
    'image': 'assets/images/hero_image_page/image-10@3x.png',
    'title': 'Rechipe10',
    'recipeDescription': 'It is so delicious !'
  },
];

class HeroImagePage extends StatefulWidget {
  const HeroImagePage({Key? key}) : super(key: key);

  @override
  _HeroImagePageState createState() => _HeroImagePageState();
}

class _HeroImagePageState extends State<HeroImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid and Hero of Image'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: GridView.count(
          // Create a grid with 3 columns.
          crossAxisCount: 3,
          // set the spaceing between row
          mainAxisSpacing: 4,
          // set the spaceing between column
          crossAxisSpacing: 4,
          // Generate 10 widgets that display their index in the List.
          children: List.generate(_imageList.length, (_index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ImageDetails(heroIndex: _index);
                }));
              },
              child: Hero(
                tag: 'Image$_index',
                child: Image.asset(_imageList[_index]['image']),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class ImageDetails extends StatefulWidget {
  ImageDetails({required this.heroIndex});
  final int heroIndex;

  @override
  _ImageDetailsState createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _activeIndex = widget.heroIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image details'),
      ),
      body: _layout(),
    );
  }

  Widget _layout() {
    return Column(
      children: [
        SingleChildScrollView(
          child: Container(
            height: 80,
            child: ListView.builder(
                itemCount: _imageList.length,
                scrollDirection: Axis.horizontal,
                controller:
                    ScrollController(initialScrollOffset: 80.0 * _activeIndex),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int _index) {
                  if (_index < _imageList.length) {
                    return _oneImage(_index);
                  } else {
                    return Container();
                  }
                }),
          ),
        ),
        Padding(padding: const EdgeInsets.only(bottom: 12)),
        _imageDetails(),
      ],
    );
  }

  Widget _oneImage(int _imageIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _activeIndex = _imageIndex;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 2),
        child: Container(
          width: 80,
          child: Stack(children: [
            Image.asset(_imageList[_imageIndex]['image']),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                child: Center(
                  child: Icon(
                    Icons.copy,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: _imageIndex == _activeIndex
                  ? Colors.white.withOpacity(0)
                  : Colors.white.withOpacity(0.5),
            )
          ]),
        ),
      ),
    );
  }

  Widget _imageDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
            child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              child: Hero(
                tag: 'Image$_activeIndex',
                child: Image.asset(_imageList[_activeIndex]['image']),
              ),
            ),
          ),
        )),
        Text(_imageList[_activeIndex]['title']),
        Text(_imageList[_activeIndex]['recipeDescription']),
      ],
    );
  }
}
