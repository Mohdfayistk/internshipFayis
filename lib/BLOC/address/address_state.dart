part of 'address_bloc.dart';

@immutable
abstract class AddressState {}

class AddressInitial extends AddressState {}

class AddressBlocLoading extends AddressState {}

class AddressBlocLoaded extends AddressState {}

class AddressBlocError extends AddressState {}
