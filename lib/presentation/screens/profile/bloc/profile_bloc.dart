import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/local/keys.dart';
import '../../../../domain/entities/profile.dart';
import '../../../../domain/usecases/preferences/get_string_preference_usecase.dart';
import '../../../../domain/usecases/preferences/set_preference_usecase.dart';
import '../../../../domain/usecases/profile/fetch_profile_usecase.dart';
import '../../../utils/constants.dart';
import '../../../utils/deeplinker.dart';

part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._getStringPreferenceUseCase, this._fetchProfileUseCase,
      this._setPreferenceUseCase)
      : super(ProfileLoadInProgress()) {
    on<ProfileStarted>((event, emit) async {
      final jwtR = await _getStringPreferenceUseCase(pJWT);
      final jwt = jwtR.fold((l) => null, (r) => r);

      emit(ProfileLoadInProgress());
      if (jwt == null) {
        emit(ProfileNotAuthorized());
      } else {
        final r = await _fetchProfileUseCase();
        emit(r.fold(
          (error) => ProfileLoadError(message: error.message),
          (profile) {
            this.profile = profile;
            return ProfileLoadSuccess(profile);
          },
        ));
      }
    });

    on<ProfileChanged>((event, emit) {
      profile = event.profile;
      emit(ProfileLoadSuccess(event.profile));
    });

    on<ProfileSignOutRequested>((event, emit) async {
      await _setPreferenceUseCase(SetPreferenceParams(key: pJWT, val: null));
      profile = null;
      add(ProfileStarted());
    });

    on<ProfileShareRequested>((event, emit) async {
      emit(ProfileLoadSuccess(profile!, profileLoad: ProfileLoad.share));
      final qs = profile?.id != null ? '?referral=${profile!.id}' : '';
      final link = '$kDynamicLinkPrefix/register$qs';
      await DeepLinker.shareShortLink(link);
      emit(ProfileLoadSuccess(profile!));
    });
  }

  Profile? profile;

  final GetStringPreferenceUseCase _getStringPreferenceUseCase;
  final SetPreferenceUseCase _setPreferenceUseCase;
  final FetchProfileUseCase _fetchProfileUseCase;
}