import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/TopSideSection.dart';

import '../../utils/Resultmodel.dart';
import '../../utils/add-task-firebase.dart';
import 'Moviedetails.dart';

class FilmsItem extends StatefulWidget {
  Results results;
  int index;
  FilmsItem(this.results,this.index);

  @override
  State<FilmsItem> createState() => _FilmsItemState();
}

class _FilmsItemState extends State<FilmsItem> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>MovieDetailsScreen(widget.results,widget.index)));
      },
      child: Card(
        color: Colors.black12,
        child: Column(
            children: [

              Stack(
                children: [
                  Image.network('https://image.tmdb.org/t/p/original'+'${widget.results.backdropPath}',width:200,height:200,fit: BoxFit.cover,),
                  IconButton(onPressed: (){
                    addFavourite();
                  }, icon: Icon(Icons.bookmark_add_outlined, color: Colors.yellow[800], size: 30)),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [



                  Text(widget.results.title??'',style: Theme.of(context).textTheme.headline1,),
                  SizedBox(width: 10,),
                  Text(widget.results.overview??'',style: Theme.of(context).textTheme.headline2,
                  )
                ],
              ),



            ],
          ),
      ),
    );


  }
  addFavourite(){


    ResultModel resultmodel=ResultModel(widget.results.posterPath, widget.results.id, widget.results.originalTitle, widget.results.overview, widget.results.backdropPath, widget.results.title,widget.results.releaseDate);

    addtaskfromfirebase(resultmodel);

  }
}
