part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteEvent {}

class FetchFavorite extends FavoriteEvent {
  final String varientId;

  FetchFavorite({
    required this.varientId,
  });
}
