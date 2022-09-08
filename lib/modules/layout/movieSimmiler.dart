import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/TopSideSection.dart';

import '../../utils/Resultmodel.dart';
import '../../utils/add-task-firebase.dart';
import 'Moviedetails.dart';

class SimillierMovieScreen extends StatelessWidget {
 Results results;
 int index;
 SimillierMovieScreen(this.results,this.index);

  @override
  Widget build(BuildContext context) {

    return  Container(
        height:350,
        width:300,
        child:Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [

              Container(
                height: 250,
                width: 200,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>MovieDetailsScreen(results,index)));
                  },
                  child: Card(
color: Colors.black12,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.network('https://image.tmdb.org/t/p/original'+'${results.backdropPath}',height:100,width:150,fit: BoxFit.cover,),
                            IconButton(onPressed: (){
                              addFavourite();
                            }, icon: Icon(Icons.bookmark_add_outlined, color: Colors.yellow[800], size: 30))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star,color: Colors.lime,size: 25,),
                            Text('${results.voteCount}',style: Theme.of(context).textTheme.headline2,)
                          ],
                        ),
                        Text('${results.title}',style: Theme.of(context).textTheme.headline2,),
                        SizedBox(
                          height: 5,
                        ),
                        Text('${results.releaseDate}',textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline2,),


                      ],
                    ),

                  ),
                ),
              )









            ]) );}
 addFavourite(){


   ResultModel resultmodel=ResultModel(results.posterPath, results.id, results.originalTitle, results.overview, results.backdropPath, results.title,results.releaseDate);

   addtaskfromfirebase(resultmodel);

 }
}
