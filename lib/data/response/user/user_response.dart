import 'package:flutter_web_example/data/response/user/user_response_data.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  List<DataUser> data;
  int total;
  int page;
  int limit;
  int offset;
  UserResponse(this.data, this.limit, this.offset, this.page, this.total);
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
