part of 'product_details_bloc.dart';

@immutable
abstract class ProductDetailsState {}

class ProductDetailsInitial extends ProductDetailsState {}

class ProductDetailsBlocLoading extends ProductDetailsState {}

class ProductDetailsBlocLoaded extends ProductDetailsState {}

class ProductDetailsBlocError extends ProductDetailsState {}
