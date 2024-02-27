part of 'get_cart_bloc.dart';

@immutable
abstract class GetCartState {}

class GetCartInitial extends GetCartState {}
class GetCartBlocLoading extends GetCartState {}

class GetCartBlocLoaded extends GetCartState {}

class GetCartBlocError extends GetCartState {}
