import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/Api.dart';
import '../../Repository/ModelClass/SignUp.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  late SignUp signUpModel;
  SignUpApi signupApi = SignUpApi();

  SignupBloc() : super(SignupInitial()) {
    on<FetchSignup>((event, emit) async {
      emit(SignupBlocLoading());
      try {
        signUpModel = await signupApi.getSignUp(
            event.email, event.username, event.password);
        emit(SignupBlocLoaded());
      } catch (e) {
        print(e);
        emit(SignupBlocError());
      }
    });
  }
}
