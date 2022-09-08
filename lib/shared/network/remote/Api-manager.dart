import 'dart:convert';
import 'package:movieapp/models/SearchFilm.dart';
import 'package:movieapp/models/popular.dart';

import '../../../models/SimillerMovie.dart';
import '../../../models/rated.dart';
import 'package:http/http.dart' as http;
import 'package:movieapp/models/ListTypeOfFilms.dart';
import 'package:movieapp/models/TopSideSection.dart';




import '../../../models/rated.dart';
import '../../components/constant.dart';
class ApiManger{
///3/movie/top_rated

 static Future<TopSideSection> getsources() async{//api.themoviedb.org
  //calling api https://api.themoviedb.org/3/movie/popular?api_key=cb0ae60abe70bd08cd4ae9b42d782a9c&language=en-US&page=1
  var uri=Uri.https(BaseUrl, '/3/movie/popular',{
    'api_key':ApiKey,'language':'en-US','page':'1'
  });
 var response=await  http.get(uri); // get data from Api
 try{ //convert data from api(joison) to model
   var bodystring=response.body;
   var joson=jsonDecode(bodystring);
   var topsideresponse=TopSideSection.fromJson(joson);
   return topsideresponse;
 }
 catch(e){ //if there an error through converting data to model
   throw e;
 }
}//https://api.themoviedb.org/3/discover/movie?api_key=cb0ae60abe70bd08cd4ae9b42d782a9c&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=drama
static Future <ListTypeOfFilms> getlistoffilms(String id) async{
  var uri=Uri.https(BaseUrl, '/3/discover/movie',{

    'api_key':ApiKey,'with_genres':id
  });
  var response=await  http.get(uri);

  try{ //convert data from api(joison) to model
    var bodystring=response.body;
    var joson=jsonDecode(bodystring);
    var listtypeoffilms=ListTypeOfFilms.fromJson(joson);
    return listtypeoffilms ;
  }
  catch(e){ //if there an error through converting data to model
    throw e;
  }
}
 static Future<TopRated> Rated() async{//api.themoviedb.org
   //calling api https://api.themoviedb.org/3/movie/popular?api_key=cb0ae60abe70bd08cd4ae9b42d782a9c&language=en-US&page=1
   var uri=Uri.https(BaseUrl, '/3/movie/top_rated',{
     'api_key':ApiKey
   });
   var response=await  http.get(uri); // get data from Api
   try{ //convert data from api(joison) to model
     var bodystring=response.body;
     var joson=jsonDecode(bodystring);
     var toprated=TopRated.fromJson(joson);
     return toprated;
   }
   catch(e){ //if there an error through converting data to model
     throw e;
   }
 }
 static Future<Popular> poplar() async{//api.themoviedb.org
   //calling api https://api.themoviedb.org/3/movie/popular?api_key=cb0ae60abe70bd08cd4ae9b42d782a9c&language=en-US&page=1
   var uri=Uri.https(BaseUrl, '/3/movie/upcoming',{
     'api_key':ApiKey
   });
   var response=await  http.get(uri); // get data from Api
   try{ //convert data from api(joison) to model
     var bodystring=response.body;
     var joson=jsonDecode(bodystring);
     var popular=Popular.fromJson(joson);
     return popular;
   }
   catch(e){ //if there an error through converting data to model
     throw e;
   }
 }
 static Future<SimillerMovie> simillier( int id) async{//api.themoviedb.org
   //calling api https://api.themoviedb.org/3/movie/popular?api_key=cb0ae60abe70bd08cd4ae9b42d782a9c&language=en-US&page=1
   var uri=Uri.https(BaseUrl, '/3/movie/$id/similar',{
     'api_key':ApiKey
   });
   var response=await  http.get(uri); // get data from Api
   try{ //convert data from api(joison) to model
     var bodystring=response.body;
     var joson=jsonDecode(bodystring);
     var simillierr=SimillerMovie.fromJson(joson);
     return simillierr;
   }
   catch(e){ //if there an error through converting data to model
     throw e;
   }
 }
 static Future<SearchFilm> search( String name) async{//api.themoviedb.org
   //calling api https://api.themoviedb.org/3/movie/popular?api_key=cb0ae60abe70bd08cd4ae9b42d782a9c&language=en-US&page=1
   var uri=Uri.https(BaseUrl, '/3/search/movie',{
     'api_key':ApiKey,'query':name
   });
   var response=await  http.get(uri); // get data from Api
   try{ //convert data from api(joison) to model
     var bodystring=response.body;
     var joson=jsonDecode(bodystring);
     var seerch=SearchFilm.fromJson(joson);
     return seerch;
   }
   catch(e){ //if there an error through converting data to model
     throw e;
   }
 }

}