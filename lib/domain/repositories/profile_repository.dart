import 'package:dartz/dartz.dart';

import '../entities/profile.dart';
import '../errors/app_error.dart';
import '../usecases/profile/auth_usecase.dart';

abstract class ProfileRepository {
  Future<Either<AppError, bool>> auth(AuthParams params);

  Future<Either<AppError, Profile>> fetchProfile();

  Future<Either<AppError, void>> editProfile(Profile profile);

  Future<Either<AppError, void>> deleteProfile();

  Future<Either<AppError, void>> startSMSSignIn(String phone, String referrer);

  Future<Either<AppError, void>> signInWithSMS(String phone, String code);
}
