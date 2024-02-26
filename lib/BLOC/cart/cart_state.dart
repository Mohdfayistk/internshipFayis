part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}
class CartBlocLoading extends CartState {}

class CartBlocLoaded extends CartState {}

class CartBlocError extends CartState {}