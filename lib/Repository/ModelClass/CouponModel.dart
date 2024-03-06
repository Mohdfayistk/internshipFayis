class CouponModel {
  CouponModel({
      this.discountedAmount,});

  CouponModel.fromJson(dynamic json) {
    discountedAmount = json['discountedAmount'];
  }
  dynamic discountedAmount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['discountedAmount'] = discountedAmount;
    return map;
  }

}