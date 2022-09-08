import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/ListTypeOfFilms.dart';
import 'package:movieapp/modules/layout/typelistoffilms.dart';


import '../../models/catagory-model.dart';
import 'catagory-widget.dart';
class CatagoriesFragment extends StatelessWidget {
 var catagory=Catagory.getCatagory();
Function films;
CatagoriesFragment(this.films);

 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 33,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Browse Catagory',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
            color: Colors.black),textAlign: TextAlign.start,),
          ),
          Expanded(
            child: Container(
              child:
                  GridView.builder(
                      itemCount:catagory.length,
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8), itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        films(catagory[index]);
                      },
                        child: CatagoryWidget(catagory[index]));
                  })

            ),
          ),
        ],
      ),
    );
  }
}
