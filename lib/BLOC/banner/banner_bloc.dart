import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/banner/Api.dart';
import '../../Repository/ModelClass/Banner.dart';

part 'banner_event.dart';

part 'banner_state.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  late List<BannerModel> bannerModel;
  BannerApi bannerApi = BannerApi();

  BannerBloc() : super(BannerInitial()) {
    on<FetchBanner>((event, emit) async {
      emit(BannerBlocLoading());
      try {
        bannerModel = await bannerApi.getBanner();
        emit(BannerBlocLoaded());
      } catch (e) {
        print(e);
        emit(BannerBlocError());
      }
    });
  }
}
