import 'package:injectable/injectable.dart';

import '../../../domain/entities/enums/gender.dart';
import '../../../domain/entities/enums/region.dart';
import '../../../domain/entities/profile.dart';
import '../../network/response_models/profile_response.dart';
import '../mapper.dart';

@lazySingleton
class ProfileResponseMapper extends Mapper<ProfileResponse, Profile> {
  @override
  Profile map(ProfileResponse? entity) {
    final username = (entity?.username ?? '').replaceAll('+993', '');
    final phone = '+993$username';
    final formattedPhone = '${phone.substring(0, 4)} '
        '${phone.substring(4, 6)} ${phone.substring(6)} ';

    return Profile(
        id: entity?.id ?? 0,
        phone: formattedPhone,
        name: entity?.name,
        address: entity?.address,
        gender: entity?.gender != null ? Gender.values[entity!.gender!] : null,
        region: entity?.region != null ? Region.values[entity!.region!] : null,
        referralEarning: entity?.referalEarning ?? 0,
        referralUserCount: entity?.referalUserCount ?? 0);
  }
}
