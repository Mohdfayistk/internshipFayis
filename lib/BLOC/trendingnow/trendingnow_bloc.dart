import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/trendingnow/Api.dart';
import '../../Repository/ModelClass/TrendingNow.dart';

part 'trendingnow_event.dart';

part 'trendingnow_state.dart';

class TrendingNowBloc extends Bloc<TrendingNowEvent, TrendingNowState> {
  late List<TrendingModel> trendingModel;
  TrendingApi trendingApi = TrendingApi();

  TrendingNowBloc() : super(TrendingNowInitial()) {
    on<FetchTrendingNow>((event, emit) async {
      emit(TrendingNowBlocLoading());
      try {
        trendingModel = await trendingApi.getTrending();
        emit(TrendingNowBlocLoaded());
      } catch (e) {
        print(e);
        emit(TrendingNowBlocError());
      }
    });
  }
}
