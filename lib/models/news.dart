// "id": "global-development/2021/apr/28/kenya-debates-lowering-age-of-consent-from-18-to-16",
// "type": "article",
// "sectionId": "global-development",
// "sectionName": "Global development",
// "webPublicationDate": "2021-04-28T06:15:26Z",
// "webTitle": "Kenya debates lowering age of consent from 18 to 16",
// "webUrl": "https://www.theguardian.com/global-development/2021/apr/28/kenya-debates-lowering-age-of-consent-from-18-to-16",
// "apiUrl": "https://content.guardianapis.com/global-development/2021/apr/28/kenya-debates-lowering-age-of-consent-from-18-to-16",
// "isHosted": false,
// "pillarId": "pillar/news",
// "pillarName": "News" 

import 'package:json_annotation/json_annotation.dart'; 

part 'news.g.dart';

@JsonSerializable()
class News{  

  News();

  @JsonKey(name: 'id') 
  String? id;  

  @JsonKey(name: 'type') 
  String? type; 

  @JsonKey(name: 'sectionId') 
  String? sectionId;
  
  @JsonKey(name: 'sectionName') 
  String? sectionName; 

  @JsonKey(name: 'webPublicationDate') 
  String? webPublicationDate; 

  @JsonKey(name: 'webTitle') 
  String? webTitle;  

  @JsonKey(name: 'webUrl') 
  String? webUrl;   

  @JsonKey(name: 'apiUrl') 
  String? apiUrl;   

  @JsonKey(name: 'isHosted') 
  bool? isHosted; 

  @JsonKey(name: 'pillarId') 
  String? pillarId; 

  @JsonKey(name: 'pillarName') 
  String? pillarName;

   
   factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
   Map<String, dynamic> toJson() => _$NewsToJson(this);

}