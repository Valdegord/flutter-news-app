import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/models/user.dart';
 
 part 'response.g.dart'; 

@JsonSerializable()
class UserResponse{ 

  UserResponse(); 

  @JsonKey(name: 'response')  
  late User users; 

    factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
   Map<String, dynamic> toJson() => _$UserResponseToJson(this);


}