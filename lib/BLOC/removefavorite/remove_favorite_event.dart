part of 'remove_favorite_bloc.dart';

@immutable
abstract class RemoveFavoriteEvent {}

class FetchRemoveFavorite extends RemoveFavoriteEvent {
  final String id;

  FetchRemoveFavorite({
    required this.id,
  });
}
