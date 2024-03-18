import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/removefavorite/api.dart';

part 'remove_favorite_event.dart';

part 'remove_favorite_state.dart';

class RemoveFavoriteBloc
    extends Bloc<RemoveFavoriteEvent, RemoveFavoriteState> {
  RemoveFavoriteApi removeFavoriteApi = RemoveFavoriteApi();

  RemoveFavoriteBloc() : super(RemoveFavoriteInitial()) {
    on<FetchRemoveFavorite>((event, emit) async {
      emit(RemoveFavoriteBlocLoading());
      try {
        await removeFavoriteApi.getRemoveFavorite(event.id);
        emit(RemoveFavoriteBlocLoaded());
      } catch (e) {
        print(e);
        emit(RemoveFavoriteBlocError());
      }
    });
  }
}
