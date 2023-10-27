import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewPage extends StatefulWidget {
  // const PhotoViewPage({Key? key}) : super(key: key);

  @override
  _PhotoViewPageState createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  List _imageList = [
    'assets/images/photoView_page/recipe4.jpeg',
    'assets/images/photoView_page/recipe2.jpeg',
    'assets/images/photoView_page/recipe3.jpeg',
    'assets/images/photoView_page/recipe1.jpeg',
    'assets/images/photoView_page/recipe5.jpeg',
    'assets/images/photoView_page/recipe6.jpeg',
  ];

  showMoreImage() {
    return PhotoViewGallery.builder(
      itemCount: _imageList.length,
      builder: (context, index) {
        return PhotoViewGalleryPageOptions(
          imageProvider: AssetImage(_imageList[index]),
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 2,
        );
      },
      scrollPhysics: BouncingScrollPhysics(),
      backgroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Theme.of(context).canvasColor,
      ),
      enableRotation: true,
      loadingBuilder: (context, event) => Center(
        child: Container(
          width: 30.0,
          height: 30.0,
          child: CircularProgressIndicator(
            backgroundColor: Colors.orange,
            // value: event == null
            //     ? 0
            //     : event.cumulativeBytesLoaded / event.expectedTotalBytes,
          ),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      useSafeArea: false,
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            PhotoViewGallery.builder(
              itemCount: _imageList.length,
              builder: (context, index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: AssetImage(_imageList[index]),
                  minScale: PhotoViewComputedScale.contained * 0.8,
                  maxScale: PhotoViewComputedScale.covered * 2,
                );
              },
              scrollPhysics: BouncingScrollPhysics(),
              backgroundDecoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.black.withOpacity(0.6),
              ),
              enableRotation: true,
              loadingBuilder: (context, event) => Center(
                child: Column(),
              ),
            ),
            Positioned(
              top: 80,
              left: 20,
              child: Material(
                color: Colors.white.withOpacity(0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PhotoView'),
        ),
        body: Column(
          children: [
            SizedBox(height: 200),
            Container(
              width: 300,
              child: Text(
                  'This is a group of image, but just only show 2 in this screen:'),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                        image: AssetImage(_imageList[0]), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  width: 140,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                        image: AssetImage(_imageList[1]), fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            TextButton(
                onPressed: () {
                  // showMoreImage();
                  print('object');
                  showAlertDialog(context);
                },
                style: TextButton.styleFrom(
                  elevation: 1,
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  'show more images',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ));
  }
}
