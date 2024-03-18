part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteBlocLoading extends FavoriteState {}

class FavoriteBlocLoaded extends FavoriteState {}

class FavoriteBlocError extends FavoriteState {}
