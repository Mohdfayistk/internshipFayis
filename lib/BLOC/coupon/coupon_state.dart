part of 'coupon_bloc.dart';

@immutable
abstract class CouponState {}

class CouponInitial extends CouponState {}

class CouponBlocLoading extends CouponState {}

class CouponBlocLoaded extends CouponState {}

class CouponBlocError extends CouponState {}
