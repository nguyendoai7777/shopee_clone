import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HeaderCarousel extends StatefulWidget {
  const HeaderCarousel({
    Key key,
  }) : super(key: key);

  @override
  _HeaderCarouselState createState() => _HeaderCarouselState();
}

class _HeaderCarouselState extends State<HeaderCarousel> {
  final List<String> imagesList = [
    'https://f2.hcm.edu.vn//UploadImages/thcsnguyenduq1/Bai%206%20-%20lop%207.jpg?w=1000',
    'http://baoquangninh.com.vn/dataimages/201702/original/images909607_1.jpg',
    'https://cdn.pixabay.com/photo/2015/10/19/00/19/savanna-995360_960_720.jpg',
    'https://media.istockphoto.com/photos/oak-tree-in-early-summer-picture-id1151577168',
    'https://media.istockphoto.com/photos/wild-oats-growing-in-oak-tree-forest-in-california-foothills-picture-id988850148'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imagesList.length,
      options: CarouselOptions(
          height: 250.0,
          autoPlay: true,
          viewportFraction: 1,
          autoPlayCurve: Curves.easeOut,
          autoPlayInterval: Duration(seconds: 3)),
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Image.network(
              imagesList[index],
              fit: BoxFit.fitWidth,
              height: 250,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        );
      },
    );
  }
}
