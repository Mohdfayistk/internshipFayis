

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/trending/Api.dart';
import '../../Repository/ModelClass/TrendingModel.dart';

part 'trending_event.dart';
part 'trending_state.dart';

class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  late List<TrendingModel> trendingModel;
  TrendingApi trendingApi = TrendingApi();
  TrendingBloc() : super(TrendingInitial()) {
    on<FetchTrending>((event, emit) async{
      emit(TrendingBlocLoading());
      try {
        trendingModel = await trendingApi.getTrending();
        emit(TrendingBlocLoaded());
      } catch (e) {
        print(e);
        emit(TrendingBlocError());
      }
    });
  }
}
