part of 'trending_bloc.dart';

@immutable
abstract class TrendingState {}

class TrendingInitial extends TrendingState {}
class TrendingBlocLoading extends TrendingState {}

class TrendingBlocLoaded extends TrendingState {}

class TrendingBlocError extends TrendingState {}
