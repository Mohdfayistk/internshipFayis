part of 'remove_cart_bloc.dart';

@immutable
abstract class RemoveCartState {}

class RemoveCartInitial extends RemoveCartState {}

class RemoveCartBlocLoading extends RemoveCartState {}

class RemoveCartBlocLoaded extends RemoveCartState {}

class RemoveCartBlocError extends RemoveCartState {}
