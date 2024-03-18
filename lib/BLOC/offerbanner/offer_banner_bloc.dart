import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/offerbanner/Api.dart';
import '../../Repository/ModelClass/Banner.dart';

part 'offer_banner_event.dart';

part 'offer_banner_state.dart';

class OfferBannerBloc extends Bloc<OfferBannerEvent, OfferBannerState> {
  late List<BannerModel> offerBannerModel;
  OfferBannerApi offerBannerApi = OfferBannerApi();

  OfferBannerBloc() : super(OfferBannerInitial()) {
    on<FetchOfferBanner>((event, emit) async {
      emit(OfferBannerBlocLoading());
      try {
        offerBannerModel = await offerBannerApi.getOfferBanner();
        emit(OfferBannerBlocLoaded());
      } catch (e) {
        print(e);
        emit(OfferBannerBlocError());
      }
    });
  }
}
