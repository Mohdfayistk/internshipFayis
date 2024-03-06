part of 'coupon_bloc.dart';

@immutable
abstract class CouponEvent {}

class FetchCoupon extends CouponEvent {
  final String coupon;
  final String id;

  FetchCoupon({required this.coupon,
  required this.id
  });
}
