part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupBlocLoading extends SignupState {}

class SignupBlocLoaded extends SignupState {}

class SignupBlocError extends SignupState {}
