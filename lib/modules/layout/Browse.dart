import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/modules/layout/catagories-fragament.dart';
import 'package:movieapp/modules/layout/typelistoffilms.dart';

import '../../models/catagory-model.dart';

class BrowseScreen extends StatefulWidget {
  static const String routeName='browse';



  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:isselectedCatagory==null?CatagoriesFragment(catagoryclicked):ListOfFilmScreen(isselectedCatagory!),
    );
  }

  Catagory ? isselectedCatagory;
  void catagoryclicked(Catagory catagory){
    isselectedCatagory=catagory;
    setState(() {

    });
  }

  void catagoryItem(Catagory catagory){


      isselectedCatagory=catagory;
      setState(() {

      });



    }
}
