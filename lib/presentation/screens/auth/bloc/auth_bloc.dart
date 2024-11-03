import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/utils/app_debouncer.dart';
import '../../../../domain/repositories/profile_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.repository) : super(const AuthInitial()) {
    on<AuthSMSSignInStarted>(
      (event, emit) async {
        phone = event.phone.replaceAll(' ', '');
        final referrer = event.referrer.replaceAll(' ', '');
        final r = await repository.startSMSSignIn(phone, referrer);
        emit(r.fold(
          (l) => AuthError(l.message),
          (r) => const AuthEnterCode(),
        ));
      },
      transformer: AppDebouncer.blocTransformer<AuthSMSSignInStarted>,
    );

    on<AuthSignInWithSMS>(
      (event, emit) async {
        final r = await repository.signInWithSMS(phone, event.code);

        emit(r.fold(
          (l) => AuthError(l.message),
          (r) => const AuthSuccess(),
        ));
      },
      transformer: AppDebouncer.blocTransformer<AuthSignInWithSMS>,
    );

    on<AuthVerificationCanceled>((event, emit) {
      emit(const AuthInitial());
    });
  }

  late String phone;
  final ProfileRepository repository;
}
