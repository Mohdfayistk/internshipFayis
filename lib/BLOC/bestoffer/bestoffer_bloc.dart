import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/bestoffer/Api.dart';
import '../../Repository/ModelClass/BestofferModel.dart';

part 'bestoffer_event.dart';

part 'bestoffer_state.dart';

class BestOfferBloc extends Bloc<BestOfferEvent, BestOfferState> {
  late List<BestOfferModel> bestOfferModel;
  BestOfferApi bestOfferApi = BestOfferApi();

  BestOfferBloc() : super(BestOfferInitial()) {
    on<FetchBestOffer>((event, emit) async {
      emit(BestOfferBlocLoading());
      try {
        bestOfferModel = await bestOfferApi.getBestOffer();
        emit(BestOfferBlocLoaded());
      } catch (e) {
        print(e);
        emit(BestOfferBlocError());
      }
    });
  }
}
