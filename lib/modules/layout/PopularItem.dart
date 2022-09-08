import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/TopSideSection.dart';

import '../../utils/Resultmodel.dart';
import '../../utils/add-task-firebase.dart';
import 'Moviedetails.dart';

class PopularSectionItem extends StatelessWidget {
Results results;
int index;
PopularSectionItem(this.results,this.index);
  @override
  Widget build(BuildContext context) {

    return  Container(
        height:300,
        width:300,
        child:Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MovieDetailsScreen(results,index)));
                },
                  child: Container(
                    color: Colors.cyan,
                    width: 200,
                    height: 200,
                    child: GridTile(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Stack(
                            children: [
                              Image.network('https://image.tmdb.org/t/p/original'+'${results.backdropPath}',height:200,width:200,fit: BoxFit.cover,),
                              IconButton(onPressed: (){
                                addFavourite();
                              }, icon: Icon(Icons.bookmark_add_outlined, color: Colors.yellow[800], size: 30))


                            ],
                          )
                      ,

                      ),
                      footer: GridTileBar(
                        title: Text('${results.originalTitle}',style: Theme.of(context).textTheme.headline1,),
                        leading: Text(''),
                        trailing: Text(''),
                      ),
                    ),
                  )

              ),









            ]) );


  }

addFavourite(){


  ResultModel resultmodel=ResultModel(results.posterPath, results.id, results.originalTitle, results.overview, results.backdropPath, results.title, results.releaseDate);

  addtaskfromfirebase(resultmodel);

}























  }


