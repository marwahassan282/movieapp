import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/SearchFilm.dart';
import 'package:movieapp/modules/layout/Search.dart';

import '../../shared/network/remote/Api-manager.dart';

class SearchPage extends StatelessWidget {
  static var controller=TextEditingController();
  static const String routName='search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          FutureBuilder<SearchFilm>(
              future: ApiManger.search(controller.text),
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


                var searchlist=snapShot.data?.results??[];

                return  ListView.separated(

                    itemCount: searchlist.length,
                    itemBuilder:(context,index){

                      return SearchScreen(searchlist[index],index);


                    }, separatorBuilder: (BuildContext context, int index) {
                     return SizedBox(
                        height: 15,
                      );
                },
                  );


              }




          ),
         Icon(Icons.movie,size: 30,color: Colors.white,)
        ],
      ),
      appBar: AppBar(
        // The search area here
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },

            child: Icon(Icons.arrow_back)),),


    );
  }

}