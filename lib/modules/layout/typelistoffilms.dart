import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/ListTypeOfFilms.dart';
import 'package:movieapp/models/catagory-model.dart';
import 'package:movieapp/modules/layout/filmsItem.dart';

import '../../shared/network/remote/Api-manager.dart';

class ListOfFilmScreen extends StatefulWidget {
  static const String routName='films';
Catagory catagory;
ListOfFilmScreen(this.catagory);

  @override
  State<ListOfFilmScreen> createState() => _ListOfFilmScreenState();
}

class _ListOfFilmScreenState extends State<ListOfFilmScreen> {
  @override
  Widget build(BuildContext context) {
    printt();
    return Container(

     child: FutureBuilder<ListTypeOfFilms>(
         future: ApiManger.getlistoffilms(widget.catagory.id.toString()),
         builder: (c,snapShot){
           if(snapShot.connectionState==ConnectionState.waiting){
             return Center(
                 child: CircularProgressIndicator(


                 )
             );}
           if(snapShot.hasError){
             return Column(
               children: [
                 Text('${snapShot.error}'),
                 ElevatedButton(onPressed:(){}, child:Text('try Again')),
               ],
             );

           }


           var filmscatagory=snapShot.data?.results??[];


           return ListView.separated(

             itemCount:filmscatagory.length,
               itemBuilder:(context,index){

                 return FilmsItem(filmscatagory[index],index);



               }, separatorBuilder: (BuildContext context, int index) {
  return SizedBox(
    width: 10,
  );
             },
             );

         }




     ),

    );
  }

  Catagory ?issellectedcayagory;

  void catagoryclicked(Catagory catagory){
    issellectedcayagory=catagory;
    setState(() {

    });
  }

  void printt(){
    print('my id is ${widget.catagory.id}');
  }
}
