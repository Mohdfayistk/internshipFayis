part of 'trendingnow_bloc.dart';

@immutable
abstract class TrendingNowState {}

class TrendingNowInitial extends TrendingNowState {}
class TrendingNowBlocLoading extends TrendingNowState {}

class TrendingNowBlocLoaded extends TrendingNowState {}

class TrendingNowBlocError extends TrendingNowState {}
