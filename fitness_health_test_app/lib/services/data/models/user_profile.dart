import 'package:json_annotation/json_annotation.dart';

part 'user_profile.g.dart';

@JsonSerializable()
class UserProfile {

  UserProfile({
    required this.pk,
    required this.email,
    required this.username,
    required this.token,
  });

  int pk;
  String email;
  String username;
  String token;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}