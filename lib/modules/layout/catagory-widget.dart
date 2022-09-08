import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../models/catagory-model.dart';

class CatagoryWidget extends StatelessWidget {
  Catagory catagory;

  CatagoryWidget(this.catagory);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(12),

      child: Column(
        children: [
          Image.asset(catagory.image,height: 120,fit: BoxFit.fill,),
          Expanded(child: Center(
            child: Text(catagory.title,style: Theme.of(context).textTheme.headline1?.copyWith(
              color: Colors.white,
              fontSize: 25
            ),),
          ))
        ],
      ),
    );
  }
}
