part of 'offer_banner_bloc.dart';

@immutable
abstract class OfferBannerState {}

class OfferBannerInitial extends OfferBannerState {}
class OfferBannerBlocLoading extends OfferBannerState {}

class OfferBannerBlocLoaded extends OfferBannerState {}

class OfferBannerBlocError extends OfferBannerState {}
