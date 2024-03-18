import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/API/coupon/Api.dart';
import '../../Repository/ModelClass/CouponModel.dart';

part 'coupon_event.dart';

part 'coupon_state.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  late CouponModel couponModel;
  CouponModelApi couponModelApi = CouponModelApi();

  CouponBloc() : super(CouponInitial()) {
    on<FetchCoupon>((event, emit) async {
      emit(CouponBlocLoading());
      try {
        couponModel =
            await couponModelApi.getCouponModel(event.coupon, event.id);
        emit(CouponBlocLoaded());
      } catch (e) {
        print(e);
        emit(CouponBlocError());
      }
    });
  }
}
