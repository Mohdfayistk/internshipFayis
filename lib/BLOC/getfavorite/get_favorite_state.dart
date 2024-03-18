part of 'get_favorite_bloc.dart';

@immutable
abstract class GetFavoriteState {}

class GetFavoriteInitial extends GetFavoriteState {}

class GetFavoriteBlocLoading extends GetFavoriteState {}

class GetFavoriteBlocLoaded extends GetFavoriteState {}

class GetFavoriteBlocError extends GetFavoriteState {}
