// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return UserResponse(
    (json['data'] as List<dynamic>)
        .map((e) => DataUser.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['limit'] as int,
    json['offset'] as int,
    json['page'] as int,
    json['total'] as int,
  );
}

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'offset': instance.offset,
    };
