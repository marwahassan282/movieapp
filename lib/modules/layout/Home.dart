import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/TopSideSection.dart';
import 'package:movieapp/modules/layout/Browse.dart';
import 'package:movieapp/modules/layout/Homelayout.dart';
import 'package:movieapp/modules/layout/Search.dart';
import 'package:movieapp/modules/layout/Watch.dart';
import 'package:movieapp/modules/layout/searchpage.dart';

import '../../shared/network/remote/Api-manager.dart';

class HomeScreen extends StatefulWidget {
static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(




bottomNavigationBar: Theme(
  data:Theme.of(context).copyWith(
    canvasColor: Theme.of(context).primaryColor
  ),
  child:   BottomNavigationBar(

    onTap: (index) {

      currentIndex = index;

      setState(() {});

    },

    currentIndex: currentIndex,



    items: [



    BottomNavigationBarItem(

      label: 'Home',

      icon: ImageIcon(AssetImage('assets/images/Home icon.png'),

    ),

   ),

    BottomNavigationBarItem(label:'Home',

      icon: ImageIcon(AssetImage('assets/images/search-2.png')),

      ),

    BottomNavigationBarItem(

      label:'Browse',

      icon: ImageIcon(

          AssetImage('assets/images/Icon material-movie.png')),

      ),

    BottomNavigationBarItem(

        label:'Watch',

      icon: ImageIcon(AssetImage('assets/images/watch.png')),

     ),





  ],



  ),
),

      body: tabs[currentIndex],
    );
  }

List<Widget> tabs = [
  HomeLayoutScreen(),
  SearchPage(),
  BrowseScreen(),
  WatchScreen(),
];
}
