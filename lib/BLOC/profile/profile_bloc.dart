import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/profile/Api.dart';
import '../../Repository/ModelClass/Profile.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  late Profile profileModel;
  ProfileApi profileApi = ProfileApi();

  ProfileBloc() : super(ProfileInitial()) {
    on<FetchProfile>((event, emit) async {
      emit(ProfileBlocLoading());
      try {
        profileModel = await profileApi.getProfile();
        emit(ProfileBlocLoaded());
      } catch (e) {
        print(e);
        emit(ProfileBlocError());
      }
    });
  }
}
