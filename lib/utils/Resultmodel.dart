class ResultModel{

  String? backdropPath;
  int? id;

  String? originalTitle;
  String? overview;

  String? posterPath;
  String? releaseDate;
  String? title;
  ResultModel(this.posterPath,this.id,this.originalTitle,this.overview,this.backdropPath,this.title,this.releaseDate);
 ResultModel.fromJson(dynamic json) {

    backdropPath = json['backdrop_path'];

    id = json['id'];

    originalTitle = json['original_title'];
    overview = json['overview'];

    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];

  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    map['backdrop_path'] = backdropPath;

    map['id'] = id;

    map['original_title'] = originalTitle;
    map['overview'] = overview;

    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['title'] = title;

    return map;
  }


}