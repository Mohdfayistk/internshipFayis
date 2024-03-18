part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class FetchCart extends CartEvent {
  final String varientId;
  final int quantity;

  FetchCart({required this.varientId, required this.quantity});
}
