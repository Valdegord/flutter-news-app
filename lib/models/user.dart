import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/models/news.dart';
 

part 'user.g.dart';

@JsonSerializable()
class User{
  
  @JsonKey(name:'status') 
  String? status;  

  @JsonKey(name:'userTier') 
  String? userTier;  

  @JsonKey(name:'total') 
  int? total;  

  @JsonKey(name: 'startIndex') 
  int? startIndex;  

  @JsonKey(name: 'pageSize') 
  int? pageSize;  

  
  @JsonKey(name: 'currentPage') 
  int? currentPpage; 
  
  @JsonKey(name: 'pages') 
  int? pages; 

  @JsonKey(name:'orderBy') 
  String? orderBy;  

   @JsonKey(name:'results') 
  List<News>? news;  

  User(); 

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
   Map<String, dynamic> toJson() => _$UserToJson(this);

}