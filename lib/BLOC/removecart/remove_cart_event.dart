part of 'remove_cart_bloc.dart';

@immutable
abstract class RemoveCartEvent {}

class FetchRemoveCart extends RemoveCartEvent {
  final String id;

  FetchRemoveCart({
    required this.id,
  });
}
