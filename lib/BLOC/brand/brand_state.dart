part of 'brand_bloc.dart';

@immutable
abstract class BrandState {}

class BrandInitial extends BrandState {}

class BrandBlocLoading extends BrandState {}

class BrandBlocLoaded extends BrandState {}

class BrandBlocError extends BrandState {}
