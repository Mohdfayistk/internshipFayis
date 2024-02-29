

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/favorite/Api.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteApi favoriteApi =FavoriteApi();
  FavoriteBloc() : super(FavoriteInitial()) {
    on<FetchFavorite>((event, emit) async{
      emit(FavoriteBlocLoading());
      try {
        await favoriteApi.getFavorite(event.varientId,);
        emit(FavoriteBlocLoaded());
      } catch (e) {
        print(e);
        emit(FavoriteBlocError());
      }
    });

  }
}
