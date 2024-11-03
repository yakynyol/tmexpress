import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  const ProfileResponse({
    this.id,
    this.name,
    this.gender,
    this.region,
    this.address,
    this.username,
    this.referralEarning,
    this.referralCount,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);

  final int? id;
  final String? name;
  final int? gender;
  final int? region;
  final String? address;
  final String? username;
  final int? referralCount;
  final double? referralEarning;
}
