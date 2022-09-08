import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/popular.dart';
import 'package:movieapp/modules/layout/PopularItem.dart';
import 'package:movieapp/modules/layout/RatedSectionItem.dart';
import 'package:movieapp/modules/layout/topsectionitem.dart';

import '../../models/TopSideSection.dart';
import '../../models/rated.dart';
import '../../shared/network/remote/Api-manager.dart';

class HomeLayoutScreen extends StatelessWidget {
  static const String routeName='layout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FutureBuilder<TopSideSection>(
              future: ApiManger.getsources(),
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


                var listSources=snapShot.data?.results??[];

                return Container(
                  height: 150,
                  width: double.infinity,
                  child: ListView.builder(
scrollDirection: Axis.horizontal,
                      itemCount: listSources.length,
                      itemBuilder:(context,index){

                        return TopSectionItem(listSources[index],index);


                      },
                    ),
                );

              }




          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                child: Text('New Releses ',textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1,)),
          ),
          FutureBuilder<Popular>(
              future: ApiManger.poplar(),
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


                var popularlist=snapShot.data?.results??[];

                return Container(
                  height: 150,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popularlist.length,
                    itemBuilder:(context,index){

                      return PopularSectionItem(popularlist[index],index);


                    },
                  ),
                );

              }




          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              margin: EdgeInsets.all(20),
                child: Text('Recomended ',textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1,)),
          ),
         SizedBox(height: 15,),
          Container(
            height: 200,
            child: FutureBuilder<TopRated>(
                future: ApiManger.Rated(),
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


                  var ratedlist=snapShot.data?.results??[];

                  return Container(
                    height: 150,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ratedlist.length,
                      itemBuilder:(context,index){

                        return RatedSectionItem(ratedlist[index],index);


                      },
                    ),
                  );

                }




            ),
          ),
        

        ],
      ),
    );
  }
}