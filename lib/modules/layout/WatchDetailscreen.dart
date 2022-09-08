import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/utils/Resultmodel.dart';
import 'package:movieapp/utils/add-task-firebase.dart';

class WatchDetailsScreen extends StatelessWidget {
 ResultModel resultModel;
 WatchDetailsScreen(this.resultModel);

 @override
 Widget build(BuildContext context) {
   return  GestureDetector(
     onTap: (){
       deleteTaskFrpmFireStore(resultModel).then((value) {

         print('task deleted');
       });
     },
     child: Container(
         height: 300,
         width: double.infinity,
         child: Column(
           children: [
             Card(
               color: Colors.black12,
               child:Column(
                 children: [
                   Image.network('https://image.tmdb.org/t/p/original'+'${resultModel.backdropPath}',width: double.infinity,height: 150,),
                   Text('${resultModel.originalTitle}',style: Theme.of(context).textTheme.headline1,),
                   Text('${resultModel.releaseDate}',style: Theme.of(context).textTheme.headline2)
                 ],
               ),
             )
           ],
         ),
       ),
   );




 }
}
