part of 'remove_favorite_bloc.dart';

@immutable
abstract class RemoveFavoriteState {}

class RemoveFavoriteInitial extends RemoveFavoriteState {}
class RemoveFavoriteBlocLoading extends RemoveFavoriteState {}

class RemoveFavoriteBlocLoaded extends RemoveFavoriteState {}

class RemoveFavoriteBlocError extends RemoveFavoriteState {}