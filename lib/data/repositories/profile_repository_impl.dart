import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/profile.dart';
import '../../domain/errors/app_error.dart';
import '../../domain/repositories/preferences_repository.dart';
import '../../domain/repositories/profile_repository.dart';
import '../../domain/usecases/profile/auth_usecase.dart';
import '../../presentation/utils/constants.dart';
import '../error/exception_handler.dart';
import '../local/data_keys.dart';
import '../mappers/response_mappers/profile_response_mapper.dart';
import '../mappers/response_mappers/token_response_mapper.dart';
import '../network/auth_network.dart';
import '../network/common_network.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(
    this._exception,
    this._commonNetwork,
    this._tokenResponseMapper,
    this._authNetwork,
    this._profileResponseMapper,
    this._preferencesRepository,
  );

  final ExceptionHandler _exception;
  final CommonNetwork _commonNetwork;
  final AuthNetwork _authNetwork;
  final TokenResponseMapper _tokenResponseMapper;
  final ProfileResponseMapper _profileResponseMapper;
  final PreferencesRepository _preferencesRepository;

  @override
  Future<Either<AppError, bool>> auth(AuthParams params) {
    return _exception.handle(() async {
      final box = Hive.box<dynamic>(kDataBox);
      final referralUserId = box.get(kRegisterReferral);

      final token = await _commonNetwork
          .auth(params.phone, params.code, box.get(kRegisterReferral))
          .then(_tokenResponseMapper.map);

      // delete referral user from data, if successfully signed in
      if (referralUserId != null && token.access.isNotEmpty) {
        await box.delete(kRegisterReferral);
      }
      await _preferencesRepository.setPreference(pJWT, token.access);
      return true;
    });
  }

  @override
  Future<Either<AppError, Profile>> fetchProfile() {
    return _exception.handle(() async {
      final profile =
          await _authNetwork.fetchProfile().then(_profileResponseMapper.map);
      return profile;
    });
  }

  @override
  Future<Either<AppError, void>> editProfile(Profile profile) {
    return _exception.handle(() async {
      await _authNetwork.editProfile(profile);
    });
  }

  @override
  Future<Either<AppError, void>> deleteProfile() {
    return _exception.handle(() async {
      await _authNetwork.deleteProfile();
    });
  }

  Future<Either<AppError, void>> startSMSSignIn(String phone, String referrer) {
    return _exception.handle(() async {
      if (phone != '66666666') { /// 81133 
        await _commonNetwork.startSMSSignIn(
          phone,
          referrer.isNotEmpty ? referrer : null,
        );
      }
    });
  }

  Future<Either<AppError, void>> signInWithSMS(String phone, String code) {
    return _exception.handle(() async {
      final token = await _commonNetwork.signInWithSMS(phone, code);
      await _preferencesRepository.setPreference(pJWT, token.accessToken);
    });
  }
}
