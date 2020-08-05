import 'package:flutter/material.dart';
import 'package:sen_point_clone/widgets/home_carousel.dart';

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandHeight;
  final List<String> imagesList = [
    'https://f2.hcm.edu.vn//UploadImages/thcsnguyenduq1/Bai%206%20-%20lop%207.jpg?w=1000',
    'http://baoquangninh.com.vn/dataimages/201702/original/images909607_1.jpg',
    'https://cdn.pixabay.com/photo/2015/10/19/00/19/savanna-995360_960_720.jpg',
    'https://media.istockphoto.com/photos/oak-tree-in-early-summer-picture-id1151577168',
    'https://media.istockphoto.com/photos/wild-oats-growing-in-oak-tree-forest-in-california-foothills-picture-id988850148'
  ];
  CustomSliverAppBar({@required this.expandHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: HeaderCarousel())),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 60,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Transform.translate(
                offset: Offset(0, -15),
                child: Container(
                  color: Color.fromRGBO(128 + (127*shrinkOffset/expandHeight).floor(), 0, 120, 1),
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                ),
              ),
            )),
        Align(
          alignment: Alignment.topCenter,
          child: Opacity(
            opacity:
                shrinkOffset < 150 ? (shrinkOffset) / (expandHeight - 100) : 1,
            child: Container(
              height: 100,
              color: Colors.white,
              
            ),
          ),
        ),

        /* Positioned(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.pink.withOpacity(0 + shrinkOffset  / expandHeight),
          ),
        ) */
      ],
    );
  }

  @override
  double get maxExtent => expandHeight;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

/* 

 CarouselSlider.builder(
          itemCount: imagesList.length,
          options: CarouselOptions(
            height: 240.0,
            autoPlay: true,
            viewportFraction: 1,
            autoPlayCurve: Curves.easeOut,
            autoPlayInterval: Duration(seconds: 3),
          ),
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
        ) */
