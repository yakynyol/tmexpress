import 'package:equatable/equatable.dart';

import 'enums/gender.dart';
import 'enums/region.dart';

class Profile extends Equatable {
  const Profile({
    required this.phone,
    required this.referralCount,
    required this.referralEarning,
    required this.id,
    this.name,
    this.gender,
    this.region,
    this.address,
  });

  final int id;
  final String phone;
  final String? name;
  final Gender? gender;
  final Region? region;
  final String? address;
  final int referralCount;
  final double referralEarning;

  Map<String, dynamic> toJson() => {
        'name': name,
        'gender': gender?.index,
        'region': region?.index,
        'address': address
      };

  Profile copyWith({
    String? name,
    Gender? gender,
    Region? region,
    String? address,
  }) =>
      Profile(
          id: id,
          phone: phone,
          name: name ?? this.name,
          gender: gender ?? this.gender,
          region: region ?? this.region,
          address: address ?? this.address,
          referralCount: referralCount,
          referralEarning: referralEarning);

  @override
  List<Object?> get props => [name, address, gender, region];
}
