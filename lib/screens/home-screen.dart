import 'package:flutter/material.dart';
import 'package:sen_point_clone/screens/home-page.text';
import 'package:sen_point_clone/screens/home.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text(' '),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.style),
        title: Text(' '),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_balance_wallet),
        title: Text(' '),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.view_list),
        title: Text(' '),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text(' '),
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Home(),
        Blue(),
        Yellow(),
        Pink(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(
      () {
        bottomSelectedIndex = index;
        pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}


class Blue extends StatefulWidget {
  @override
  _BlueState createState() => _BlueState();
}

class _BlueState extends State<Blue> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
    );
  }
}

class Yellow extends StatefulWidget {
  @override
  _YellowState createState() => _YellowState();
}

class _YellowState extends State<Yellow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
    );
  }
}

class Pink extends StatefulWidget {
  @override
  _PinkState createState() => _PinkState();
}

class _PinkState extends State<Pink> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
    );
  }
}
