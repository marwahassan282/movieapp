import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/TopSideSection.dart';
import 'package:movieapp/utils/Resultmodel.dart';
CollectionReference<ResultModel> gettaskfromfirestore(){
  return FirebaseFirestore.instance.collection('Marwa').withConverter<ResultModel>(
fromFirestore: (snapshot,op){
return ResultModel.fromJson((snapshot.data()!));
},
toFirestore: (result,op)=>result.toJson());
}

Future<void> addtaskfromfirebase(ResultModel result){//added to fire base
 var typecollection=gettaskfromfirestore();
 var doc=typecollection.doc();
//outo id
 return doc.set(result);

}
Future<QuerySnapshot<ResultModel>> getTaskFromFireBase() {
  var gettask = gettaskfromfirestore();
  return gettask.get();
}//not real time data base need set state to load
Stream<QuerySnapshot<ResultModel>> StreamTaskFromFireBase() {//real time database using with shat application
  var gettask = gettaskfromfirestore();
  return gettask.snapshots();
}

Future<void>deleteTaskFrpmFireStore(ResultModel resultModel){

  return gettaskfromfirestore().doc(resultModel.title).delete();

}
