import 'package:json_annotation/json_annotation.dart';
part 'user_response_data.g.dart';

@JsonSerializable()
class DataUser {
  String id;
  String title;
  String firstName;
  String lastName;
  String email;
  String picture;
  DataUser(this.email, this.firstName, this.id, this.lastName, this.picture,
      this.title);

  factory DataUser.fromJson(Map<String, dynamic> json) =>
      _$DataUserFromJson(json);
  Map<String, dynamic> toJson() => _$DataUserToJson(this);
}
