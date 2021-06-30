// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..status = json['status'] as String?
    ..userTier = json['userTier'] as String?
    ..total = json['total'] as int?
    ..startIndex = json['startIndex'] as int?
    ..pageSize = json['pageSize'] as int?
    ..currentPpage = json['currentPage'] as int?
    ..pages = json['pages'] as int?
    ..orderBy = json['orderBy'] as String?
    ..news = (json['results'] as List<dynamic>?)
        ?.map((e) => News.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'status': instance.status,
      'userTier': instance.userTier,
      'total': instance.total,
      'startIndex': instance.startIndex,
      'pageSize': instance.pageSize,
      'currentPage': instance.currentPpage,
      'pages': instance.pages,
      'orderBy': instance.orderBy,
      'results': instance.news,
    };
