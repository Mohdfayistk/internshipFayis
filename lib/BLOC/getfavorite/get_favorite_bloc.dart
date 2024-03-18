import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/getfavorite/Api.dart';
import '../../Repository/ModelClass/GetFavoriteModel.dart';

part 'get_favorite_event.dart';
part 'get_favorite_state.dart';

class GetFavoriteBloc extends Bloc<GetFavoriteEvent, GetFavoriteState> {
  late GetFavoriteModel getFavoriteModel;
  GetFavoriteApi getFavoriteApi = GetFavoriteApi();

  GetFavoriteBloc() : super(GetFavoriteInitial()) {
    on<FetchGetFavorite>((event, emit) async {
      emit(GetFavoriteBlocLoading());
      try {
        getFavoriteModel = await getFavoriteApi.getGetFavorite();
        emit(GetFavoriteBlocLoaded());
      } catch (e) {
        print(e);
        emit(GetFavoriteBlocError());
      }
    });
  }
}
