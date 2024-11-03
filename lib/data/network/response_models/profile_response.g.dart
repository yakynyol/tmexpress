// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      region: (json['region'] as num?)?.toInt(),
      address: json['address'] as String?,
      username: json['username'] as String?,
      referralEarning: (json['referralEarning'] as num?)?.toDouble(),
      referralCount: (json['referralCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'region': instance.region,
      'address': instance.address,
      'username': instance.username,
      'referralCount': instance.referralCount,
      'referralEarning': instance.referralEarning,
    };
