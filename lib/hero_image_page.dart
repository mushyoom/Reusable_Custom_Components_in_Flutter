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
  {
    'image': 'assets/images/hero_image_page/image-1@3x.png',
    'title': 'Rechipe11',
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

class ImageDetails extends StatelessWidget {
  final int heroIndex;
  ImageDetails({required this.heroIndex});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: double.infinity,
                  child: Hero(
                    tag: 'Image$heroIndex',
                    child: Image.asset(_imageList[heroIndex]['image']),
                  ),
                )),
            Text(_imageList[heroIndex]['title']),
            Text(_imageList[heroIndex]['recipeDescription']),
          ],
        ),
      ),
    );
  }
}
