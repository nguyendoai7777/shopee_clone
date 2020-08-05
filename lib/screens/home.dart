import 'package:flutter/material.dart';
import 'package:sen_point_clone/widgets/custom-scrollview.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomSliverAppBar(expandHeight: 250),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 400,
              height: 5000,
              color: Colors.pink,
            ),
          )
        ],
      ),
    );
  }
}
