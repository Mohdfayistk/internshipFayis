part of 'bestoffer_bloc.dart';

@immutable
abstract class BestOfferState {}

class BestOfferInitial extends BestOfferState {}

class BestOfferBlocLoading extends BestOfferState {}

class BestOfferBlocLoaded extends BestOfferState {}

class BestOfferBlocError extends BestOfferState {}
