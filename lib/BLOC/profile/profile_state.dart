part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}
class ProfileBlocLoading extends ProfileState {}

class ProfileBlocLoaded extends ProfileState {}

class ProfileBlocError extends ProfileState {}