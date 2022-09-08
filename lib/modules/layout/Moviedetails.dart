import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/SimillerMovie.dart';
import 'package:movieapp/models/TopSideSection.dart';
import 'package:movieapp/modules/layout/movieSimmiler.dart';

import '../../models/rated.dart';
import '../../shared/network/remote/Api-manager.dart';
import 'RatedSectionItem.dart';

class MovieDetailsScreen extends StatelessWidget {

  Results results;
int index;


MovieDetailsScreen(this.results,this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${results.title}',style: Theme.of(context).textTheme.headline1,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(     'https://image.tmdb.org/t/p/original' +'${results.posterPath}'),
            Text('${results.title}',style: TextStyle(fontSize: 30),textAlign: TextAlign.start,),
            Text('${results.releaseDate}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.network('https://image.tmdb.org/t/p/original' +'${results.posterPath}',width: 150,height: 100,),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          color: Colors.cyan,
                          child: Text('${results.originalTitle}',style: TextStyle(fontSize: 25),),
                        ),
                      ),
                      Text('${results.overview}',style: Theme.of(context).textTheme.headline2,),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.limeAccent,size: 30,),
                          Text('${results.voteCount}',style: Theme.of(context).textTheme.headline2,)
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
            Text('More Like This',style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.start,),
            FutureBuilder<SimillerMovie>(
                future: ApiManger.simillier(results.id!),
                builder: (c,snapShot){
                  if(snapShot.connectionState==ConnectionState.waiting){
                    return Center(
                        child: CircularProgressIndicator()
                    );}
                  if(snapShot.hasError){
                    return Column(
                      children: [
                        Text('${snapShot.error}'),
                        ElevatedButton(onPressed:(){}, child:Text('try Again')),
                      ],
                    );

                  }


                  var simillierlist=snapShot.data?.results??[];

                  return Container(
                      height: 200,
                      width: 300,

                       

                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: simillierlist.length,
                          itemBuilder:(context,index){

                            return SimillierMovieScreen(simillierlist[index],index);


                          },
                        ),

                    );


                }




            ),


          ],
        ),
      ),

    );
  }
}
