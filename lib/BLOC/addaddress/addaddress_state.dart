part of 'addaddress_bloc.dart';

@immutable
abstract class AddaddressState {}

class AddaddressInitial extends AddaddressState {}



class AddaddressBlocLoading extends AddaddressState {}

class AddaddressBlocLoaded extends AddaddressState {}

class AddaddressBlocError extends AddaddressState {}
