// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataUser _$DataUserFromJson(Map<String, dynamic> json) {
  return DataUser(
    json['email'] as String,
    json['firstName'] as String,
    json['id'] as String,
    json['lastName'] as String,
    json['picture'] as String,
    json['title'] as String,
  );
}

Map<String, dynamic> _$DataUserToJson(DataUser instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'picture': instance.picture,
    };
