import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/modules/layout/WatchDetailscreen.dart';
import 'package:movieapp/utils/Resultmodel.dart';

import '../../models/TopSideSection.dart';
import '../../utils/add-task-firebase.dart';

class WatchScreen extends StatelessWidget {
  static const String routeName='watch';

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<ResultModel>>(
            stream: StreamTaskFromFireBase(),
            builder:(context,snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator());
              }
              else if(snapshot.hasError){
                return Text('some thing went wrong');
              }
              List<ResultModel>results=snapshot.data?.docs.map((e) => e.data()).toList()??[];
              return ListView.separated(
                  itemCount: results.length,
                  itemBuilder: (context,index){


                    return WatchDetailsScreen(results[index]);

                  }, separatorBuilder: (BuildContext context, int index) {
                 return   SizedBox(
                      height: 10,
                    );
              },
              );

            }
        );

  }
}


