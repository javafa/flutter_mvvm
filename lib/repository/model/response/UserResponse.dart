import 'package:json_annotation/json_annotation.dart';
import 'User.dart';

part 'UserResponse.g.dart';

@JsonSerializable()
class UserResponse {
  UserResponse(this.data, this.error, this.message);

  List<User>? data;
  bool? error;
  String? message;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}