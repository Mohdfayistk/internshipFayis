part of 'addaddress_bloc.dart';

@immutable
abstract class AddaddressEvent {}

class FetchAddaddress extends AddaddressEvent {
  final String fullname;
  final String phonenumber;
  final int pincode;
  final String state;
  final String city;
  final String address;
  final String road;
  final String housenumber;
  final String addresstype;

  FetchAddaddress(
      {required this.fullname,
      required this.phonenumber,
      required this.pincode,
      required this.road,
      required this.state,
      required this.address,
      required this.city,
      required this.housenumber,
      required this.addresstype});
}
