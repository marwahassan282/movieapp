import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/TopSideSection.dart';
import 'package:movieapp/utils/Resultmodel.dart';

import '../../utils/add-task-firebase.dart';
import 'Moviedetails.dart';

class RatedSectionItem extends StatefulWidget {
Results results;
int index;

RatedSectionItem(this.results,this.index);

  @override
  State<RatedSectionItem> createState() => _RatedSectionItemState();
}

class _RatedSectionItemState extends State<RatedSectionItem> {
bool recognizing = false;

  @override
  Widget build(BuildContext context) {

    return  Container(
        height:350,
        width:300,
        child:Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MovieDetailsScreen(widget.results,widget.index)));
                },
                child: Container(
                  height: 250,
                  width: 200,
                  child: Card(
color: Colors.black12,

                    child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: [

                              Image.network('https://image.tmdb.org/t/p/original'+'${widget.results.backdropPath}',height:100,width:150,fit: BoxFit.cover,),
                              //bool recognizing = false;
// ...

        IconButton(


            onPressed: isselected==true ?
            addFavourite() : removeFavourite(),
          icon: isselected==null?
               Icon(Icons.bookmark_add_outlined, color: Colors.yellow[800], size: 30)
              : Icon(Icons.bookmark_rounded, color: Colors.yellow[800],size: 30),

        ),]),



                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.star,color: Colors.lime,size: 25,),
                              Text('${widget.results.voteCount}',style: Theme.of(context).textTheme.headline2,)
                            ],
                          ),
                          Text('${widget.results.title}',style: Theme.of(context).textTheme.headline3),
                          SizedBox(
                            height: 5,
                          ),
                          Text('${widget.results.releaseDate}',textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline2),


                        ],
                      ),

                  ),
                ),
              )








]
    ) );





// GestureDetector(
//                   onTap: (){},
//                   child: Container(
//                     color: Colors.cyan,
//                     width: 200,
//                     height: 200,
//                     child: GridTile(
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: Image.network('https://image.tmdb.org/t/p/original'+'${results.backdropPath}',height:200,width:100,fit: BoxFit.cover,)
//                         ,
//
//                       ),
//                       footer: GridTileBar(
//                         title: Text('${results.originalTitle}'),
//                         leading: Text(''),
//                         trailing: Text(''),
//                       ),
//                     ),
//                   )
//
//               ),

  }

//bool recognizing = false;
  bool ? isselected;
addFavourite(){
    isselected=true;

    ResultModel resultmodel=ResultModel(widget.results.posterPath, widget.results.id, widget.results.originalTitle, widget.results.overview, widget.results.backdropPath, widget.results.title, widget.results.releaseDate);

    addtaskfromfirebase(resultmodel);
    setState(() {
      isselected=true;
    });
 }

removeFavourite(){

  ResultModel resultmodel=ResultModel(widget.results.posterPath, widget.results.id, widget.results.originalTitle, widget.results.overview, widget.results.backdropPath, widget.results.title, widget.results.releaseDate);

   deleteTaskFrpmFireStore(resultmodel);
   setState(() {
     isselected=null;
   });

}

getFavourite(){

  gettaskfromfirestore();

}}















